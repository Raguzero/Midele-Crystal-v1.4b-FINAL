#!/usr/bin/env python3

# Script de Python para leer event_flags.asm y producir la
#  estructura de datos necesaria para que
# pokecrystal_flag_display.py muestre las flags de una ROM.
# Para usarlo, pasar comop argumento del programa la ruta del archivo event_flags.asm

import ply.lex as lex
import ply.yacc as yacc
import sys

# Analizador léxico ###
# Palabras reservadas
reserved = {
    'const_def': 'CONST_DEF',
    'const': 'CONST',
    'const_value': 'CONST_VALUE',
    'EcQU': 'EQU'
}

# Tokens
tokens = ['COMMENT', 'ID', 'END_STATEMENT'] + list(reserved.values())

t_COMMENT = r';.*'


def t_ID(t):
    r'[a-zA-Z_][a-zA-Z_0-9]*'
    t.type = reserved.get(t.value, 'ID')    # Check for reserved words
    return t


def t_END_STATEMENT(t):
    r'\n'
    t.lexer.lineno += len(t.value)
    return t


def t_error(t):
    print("Illegal character '%s'" % t.value[0])
    t.lexer.skip(1)


# Caracteres a ignorar
t_ignore = ' \t'


# Analizador sintáctico ###

# Flags definidas
flags = []


def p_program(p):
    '''program : statement
               | statement program'''
    pass


def p_statement_const(p):
    '''statement : CONST ID END_STATEMENT
                 | CONST ID COMMENT END_STATEMENT'''
    flags.append((p[2], len(flags)))


def p_statement_num_flags(p):
    '''statement : ID EQU CONST_VALUE END_STATEMENT
                 | ID EQU CONST_VALUE COMMENT END_STATEMENT
    '''
    pass


def p_statement_ignorable(p):
    '''statement : CONST_DEF END_STATEMENT
                 | CONST_DEF COMMENT END_STATEMENT
                 | COMMENT END_STATEMENT'''
    pass


# Leer archivo
if len(sys.argv) != 2:
    print("Error: falta la ruta del archivo al procesar", file=sys.stderr)
    sys.exit(3)

data = None
with open(sys.argv[1], "r") as input_file:
    data = input_file.read()

# Procesar archivo
lexer = lex.lex()
parser = yacc.yacc()
parser.parse(data)

# Salida procesada
print("FLAG_DATA = {0}".format(flags))
