INCLUDE "constants.asm"


SECTION "Evolutions and Attacks", ROMX

INCLUDE "data/evolution_moves.asm"

INCLUDE "data/pokemon/evos_attacks_pointers.asm"


EvosAttacks::
; Evos+attacks data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, species
;    * db EVOLVE_TRADE, held item (or -1 for none), species
;    * db EVOLVE_HAPPINESS, TR_* constant (ANYTIME, MORNDAY, NITE), species
;    * db EVOLVE_STAT, level, ATK_*_DEF constant (LT, GT, EQ), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves


BulbasaurEvosAttacks:
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 7, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 20, RAZOR_LEAF
	db 25, SWEET_SCENT
	db 28, GROWTH
	db 36, SYNTHESIS
	db 40, SOLARBEAM
	db 0 ; no more level-up moves

IvysaurEvosAttacks:
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, LEECH_SEED
	db 10, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 22, RAZOR_LEAF
	db 29, SWEET_SCENT
	db 33, GROWTH
	db 39, SYNTHESIS
	db 45, SOLARBEAM
	db 0 ; no more level-up moves

VenusaurEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, LEECH_SEED
	db 1, VINE_WHIP
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 22, RAZOR_LEAF
	db 29, SWEET_SCENT
	db 41, GROWTH
	db 44, SWORDS_DANCE
	db 49, SYNTHESIS
	db 53, SOLARBEAM
	db 57, OUTRAGE
	db 0 ; no more level-up moves

CharmanderEvosAttacks:
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 7, EMBER
	db 13, SMOKESCREEN
	db 19, RAGE
	db 25, SCARY_FACE
	db 31, FLAMETHROWER
	db 37, SLASH
	db 40, DRAGON_RAGE
	db 45, FIRE_SPIN
	db 0 ; no more level-up moves

CharmeleonEvosAttacks:
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 1, EMBER
	db 13, SMOKESCREEN
	db 20, RAGE
	db 27, SCARY_FACE
	db 34, FLAMETHROWER
	db 41, SLASH
	db 44, DRAGON_RAGE
	db 49, FIRE_SPIN
	db 0 ; no more level-up moves

CharizardEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 1, EMBER
	db 1, SMOKESCREEN
	db 20, RAGE
	db 27, SCARY_FACE
	db 34, FLAMETHROWER
	db 36, WING_ATTACK
	db 44, SLASH
	db 49, DRAGON_RAGE
	db 55, FIRE_SPIN
	db 0 ; no more level-up moves

SquirtleEvosAttacks:
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, TAIL_WHIP
	db 7, BUBBLE
	db 10, WITHDRAW
	db 13, WATER_GUN
	db 18, BITE
	db 23, RAPID_SPIN
	db 28, PROTECT
	db 33, RAIN_DANCE
	db 37, SKULL_BASH
	db 43, HYDRO_PUMP
	db 0 ; no more level-up moves

WartortleEvosAttacks:
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, BUBBLE
	db 10, WITHDRAW
	db 13, WATER_GUN
	db 19, BITE
	db 25, RAPID_SPIN
	db 31, PROTECT
	db 37, RAIN_DANCE
	db 40, SKULL_BASH
	db 46, HYDRO_PUMP
	db 0 ; no more level-up moves

BlastoiseEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, BUBBLE
	db 1, WITHDRAW
	db 13, WATER_GUN
	db 19, BITE
	db 25, RAPID_SPIN
	db 31, PROTECT
	db 42, RAIN_DANCE
	db 46, CRUNCH
	db 51, SKULL_BASH
	db 56, HYDRO_PUMP
	db 0 ; no more level-up moves

CaterpieEvosAttacks:
	db EVOLVE_LEVEL, 7, METAPOD
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, STRING_SHOT
	db 5, SNORE
	db 0 ; no more level-up moves

MetapodEvosAttacks:
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0 ; no more evolutions
	db 1, HARDEN
	db 0 ; no more level-up moves

ButterfreeEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONFUSION
	db 10, CONFUSION
	db 10, GUST
	db 12, POISONPOWDER
	db 13, STUN_SPORE
	db 14, SLEEP_POWDER
	db 16, SUPERSONIC
	db 19, WHIRLWIND
	db 22, MEGA_DRAIN
	db 22, PSYBEAM
	db 25, SAFEGUARD
	db 27, MORNING_SUN
	db 30, GIGA_DRAIN
	db 34, PSYCHIC_M
	db 37, REFLECT
	db 0 ; no more level-up moves

WeedleEvosAttacks:
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 5, PECK  ; New Exclusive Midele Move (Weedle of the TCG)
	db 0 ; no more level-up moves

KakunaEvosAttacks:
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0 ; no more evolutions
	db 1, HARDEN
	db 0 ; no more level-up moves

BeedrillEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEGAHORN ; New Exclusive Midele Move
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 1, HARDEN
	db 10, FURY_ATTACK
	db 13, FOCUS_ENERGY
	db 16, TWINEEDLE
	db 19, RAGE
	db 22, PURSUIT
	db 25, PIN_MISSILE
	db 28, AGILITY
	db 31, SLUDGE_BOMB
	db 34, SUBSTITUTE
	db 37, BATON_PASS
	db 40, DOUBLE_EDGE
	db 0 ; no more level-up moves

PidgeyEvosAttacks:
	db EVOLVE_LEVEL, 18, PIDGEOTTO
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, SAND_ATTACK
	db 8, GUST
	db 11, QUICK_ATTACK
	db 14, WHIRLWIND
	db 19, WING_ATTACK
	db 23, AGILITY
	db 27, MIRROR_MOVE
	db 33, DOUBLE_EDGE
	db 0 ; no more level-up moves

PidgeottoEvosAttacks:
	db EVOLVE_LEVEL, 36, PIDGEOT
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 8, GUST
	db 11, QUICK_ATTACK
	db 14, WHIRLWIND
	db 18, STEEL_WING
	db 22, WING_ATTACK
	db 27, AGILITY
	db 33, MIRROR_MOVE
	db 38, DOUBLE_EDGE
	db 0 ; no more level-up moves

PidgeotEvosAttacks:
	db 0 ; no more evolutions
	db 1, EXTREMESPEED ; New Exclusive Midele Move
	db 1, AEROBLAST ; New Exclusive Midele Move
	db 1, TACKLE
	db 1, SAND_ATTACK
	db 8, GUST
	db 11, QUICK_ATTACK
	db 14, WHIRLWIND
	db 18, STEEL_WING
	db 22, WING_ATTACK
	db 27, AGILITY
	db 33, MIRROR_MOVE
	db 41, DOUBLE_EDGE
	db 0 ; no more level-up moves

RattataEvosAttacks:
	db EVOLVE_LEVEL, 20, RATICATE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 4, WATER_GUN
	db 7, QUICK_ATTACK
	db 10, FOCUS_ENERGY
	db 13, HYPER_FANG
	db 16, PURSUIT
	db 24, SUPER_FANG
	db 0 ; no more level-up moves

RaticateEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 1, QUICK_ATTACK
	db 4, WATER_GUN
	db 10, FOCUS_ENERGY
	db 13, HYPER_FANG
	db 16, PURSUIT
	db 20, SCARY_FACE
	db 25, SWORDS_DANCE
	db 28, JUMP_KICK ; New Exclusive Midele Move (Raticate of the Anime)
	db 30, THUNDER_WAVE
	db 33, SUPER_FANG
	db 36, REVERSAL
	db 40, DOUBLE_EDGE
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	db EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	db 1, GROWL
	db 4, PECK
	db 7, LEER
	db 13, FURY_ATTACK
	db 16, PURSUIT
	db 21, MIRROR_MOVE
	db 24, DRILL_PECK
	db 29, AGILITY
	db 35, DOUBLE_EDGE
	db 43, SKY_ATTACK
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PECK
	db 1, LEER
	db 1, FURY_ATTACK
	db 16, PURSUIT
	db 22, MIRROR_MOVE
	db 25, STEEL_WING
	db 28, DRILL_PECK
	db 33, AGILITY
	db 39, DOUBLE_EDGE
	db 48, SKY_ATTACK
	db 0 ; no more level-up moves

EkansEvosAttacks:
	db EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 5, POISON_STING
	db 10, BITE
	db 13, ACID
	db 16, MEGA_DRAIN
	db 18, GLARE
	db 23, SCREECH
	db 27, HAZE
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	db 1, WRAP
	db 1, LEER
	db 1, POISON_STING
	db 1, BITE
	db 13, ACID
	db 16, MEGA_DRAIN
	db 18, GLARE
	db 23, FISSURE
	db 25, SCREECH
	db 28, GIGA_DRAIN
	db 31, CURSE
	db 34, ROCK_SLIDE
	db 36, EARTHQUAKE
	db 39, HAZE
	db 41, IRON_TAIL	
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, GROWL
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 10, QUICK_ATTACK
	db 14, DOUBLE_KICK
	db 17, DOUBLE_TEAM
	db 20, SLAM
	db 26, THUNDERBOLT
	db 33, AGILITY
	db 36, SUBSTITUTE
	db 41, THUNDER
	db 43, ENCORE
	db 46, REFLECT
	db 50, REVERSAL
	db 55, LIGHT_SCREEN
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, TAIL_WHIP
	db 1, QUICK_ATTACK
	db 1, THUNDERBOLT
	db 0 ; no more level-up moves

SandshrewEvosAttacks:
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 7, SAND_ATTACK
	db 9, RAPID_SPIN
	db 10, POISON_STING
	db 15, MAGNITUDE
	db 18, FURY_SWIPES
	db 23, SWIFT
	db 26, SLASH
	db 31, LEECH_LIFE
	db 35, SANDSTORM
	db 0 ; no more level-up moves

SandslashEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, SAND_ATTACK
	db 1, POISON_STING
	db 9, RAPID_SPIN
	db 15, MAGNITUDE
	db 18, FURY_SWIPES
	db 23, PIN_MISSILE
	db 26, SWIFT
	db 29, SPIKES
	db 33, SLASH
	db 36, ROCK_SLIDE
	db 39, SWORDS_DANCE
	db 42, LEECH_LIFE
	db 46, BODY_SLAM
	db 49, FISSURE
	db 52, SANDSTORM
	db 56, EARTHQUAKE
	db 0 ; no more level-up moves

NidoranFEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 8, SCRATCH
	db 12, DOUBLE_KICK
	db 15, MOONLIGHT
	db 17, POISON_STING
	db 23, TAIL_WHIP
	db 30, BITE
	db 38, FURY_SWIPES
	db 0 ; no more level-up moves

NidorinaEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOQUEEN
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, TACKLE
	db 8, SCRATCH
	db 12, DOUBLE_KICK
	db 15, MOONLIGHT
	db 19, POISON_STING
	db 27, TAIL_WHIP
	db 36, BITE
	db 41, HORN_DRILL
	db 46, FURY_SWIPES
	db 0 ; no more level-up moves

NidoqueenEvosAttacks:
	db 0 ; no more evolutions
	db 1, FISSURE
	db 1, SCRATCH
	db 1, DOUBLE_KICK
	db 1, TAIL_WHIP
	db 15, MOONLIGHT
	db 23, BODY_SLAM
	db 34, ROCK_SLIDE
	db 44, HORN_DRILL
	db 0 ; no more level-up moves

NidoranMEvosAttacks:
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 8, HORN_ATTACK
	db 12, DOUBLE_KICK
	db 15, MOONLIGHT
	db 17, POISON_STING
	db 23, FOCUS_ENERGY
	db 30, FURY_ATTACK
	db 38, HORN_DRILL
	db 0 ; no more level-up moves

NidorinoEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, NIDOKING
	db 0 ; no more evolutions
	db 1, LEER
	db 1, TACKLE
	db 8, HORN_ATTACK
	db 12, DOUBLE_KICK
	db 15, MOONLIGHT
	db 19, POISON_STING
	db 27, FOCUS_ENERGY
	db 36, FURY_ATTACK
	db 46, HORN_DRILL
	db 0 ; no more level-up moves

NidokingEvosAttacks:
	db 0 ; no more evolutions
	db 1, FISSURE
	db 1, HORN_ATTACK
	db 1, DOUBLE_KICK
	db 1, POISON_STING
	db 15, MOONLIGHT
	db 23, THRASH
	db 34, ROCK_SLIDE
	db 46, MEGAHORN
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	db 1, POUND
	db 1, GROWL
	db 4, ENCORE
	db 8, SING
	db 13, DOUBLESLAP
	db 19, MINIMIZE
	db 26, DEFENSE_CURL
	db 31, MEGA_PUNCH
	db 34, METRONOME
	db 38, HEAL_BELL
	db 43, MOONLIGHT
	db 48, LIGHT_SCREEN
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, DOUBLESLAP
	db 1, METRONOME
	db 1, MOONLIGHT
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, NINETALES
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 1, EMBER
	db 7, QUICK_ATTACK
	db 13, ROAR
	db 15, HYPNOSIS
	db 21, CONFUSE_RAY
	db 24, FAINT_ATTACK
	db 27, SAFEGUARD
	db 31, FLAMETHROWER
	db 37, FIRE_SPIN
	db 42, PAIN_SPLIT
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, QUICK_ATTACK
	db 1, CONFUSE_RAY
	db 1, SAFEGUARD
	db 43, FIRE_SPIN
	db 0 ; no more level-up moves

JigglypuffEvosAttacks:
	db EVOLVE_ITEM, MOON_STONE, WIGGLYTUFF
	db 0 ; no more evolutions
	db 1, SING
	db 1, POUND
	db 4, DEFENSE_CURL
	db 8, DOUBLESLAP
	db 12, DISABLE
	db 15, ROLLOUT
	db 18, SHADOW_BALL
	db 23, SAFEGUARD
	db 26, BUBBLEBEAM
	db 29, REST
	db 31, HEAL_BELL
	db 33, BODY_SLAM
	db 37, PAIN_SPLIT
	db 40, DOUBLE_EDGE
	db 45, SEISMIC_TOSS
	db 0 ; no more level-up moves

WigglytuffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SING
	db 1, DISABLE
	db 1, CURSE
	db 1, ZAP_CANNON
	db 18, SHADOW_BALL
	db 26, BUBBLEBEAM
	db 29, REST
	db 31, HEAL_BELL
	db 33, BODY_SLAM
	db 37, PAIN_SPLIT
	db 40, DOUBLE_EDGE
	db 45, SEISMIC_TOSS
	db 50, SELFDESTRUCT
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	db 1, ABSORB
	db 6, SUPERSONIC
	db 9, HYPNOSIS
	db 12, BITE
	db 19, CONFUSE_RAY
	db 27, WING_ATTACK
	db 29, LEECH_LIFE
	db 36, MEAN_LOOK
	db 46, HAZE
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, ABSORB
	db 1, SUPERSONIC
	db 9, HYPNOSIS
	db 12, BITE
	db 19, CONFUSE_RAY
	db 30, WING_ATTACK
	db 32, LEECH_LIFE
	db 42, MEAN_LOOK
	db 55, HAZE
	db 0 ; no more level-up moves

OddishEvosAttacks:
	db EVOLVE_LEVEL, 21, GLOOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, SWEET_SCENT
	db 8, GROWTH
	db 12, ACID
	db 15, POISONPOWDER
	db 18, STUN_SPORE
	db 20, SLEEP_POWDER
	db 23, RAZOR_LEAF
	db 27, SLUDGE_BOMB
	db 32, MOONLIGHT
	db 35, REFLECT
	db 39, PETAL_DANCE
	db 0 ; no more level-up moves

GloomEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VILEPLUME
	db EVOLVE_ITEM, SUN_STONE, BELLOSSOM
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, GROWTH
	db 12, ACID
	db 15, POISONPOWDER
	db 18, STUN_SPORE
	db 20, SLEEP_POWDER
	db 24, RAZOR_LEAF
	db 29, SLUDGE_BOMB
	db 35, MOONLIGHT
	db 38, REFLECT
	db 44, PETAL_DANCE
	db 0 ; no more level-up moves

VileplumeEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 1, PETAL_DANCE
	db 32, SLUDGE_BOMB
	db 40, LEECH_SEED
	db 45, GIGA_DRAIN
	db 0 ; no more level-up moves

ParasEvosAttacks:
	db EVOLVE_LEVEL, 24, PARASECT
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 7, STUN_SPORE
	db 11, POISONPOWDER
	db 14, METAL_CLAW
	db 17, SLASH
	db 20, PSYBEAM
	db 26, LEECH_LIFE
	db 30, GROWTH
	db 36, SPORE
	db 0 ; no more level-up moves

ParasectEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, STUN_SPORE
	db 1, POISONPOWDER
	db 1, METAL_CLAW
	db 17, SLASH
	db 20, PSYBEAM
	db 30, LEECH_LIFE
	db 34, AGILITY
	db 37, GROWTH
	db 41, LEECH_SEED
	db 44, SPORE
	db 48, GIGA_DRAIN
	db 52, SYNTHESIS
	db 0 ; no more level-up moves

VenonatEvosAttacks:
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 9, SUPERSONIC
	db 17, CONFUSION
	db 20, POISONPOWDER
	db 25, LEECH_LIFE
	db 28, STUN_SPORE
	db 33, PSYBEAM
	db 36, SLEEP_POWDER
	db 41, PSYCHIC_M
	db 0 ; no more level-up moves

VenomothEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, DISABLE
	db 1, FORESIGHT
	db 1, SUPERSONIC
	db 17, CONFUSION
	db 20, POISONPOWDER
	db 25, LEECH_LIFE
	db 28, STUN_SPORE
	db 31, GUST
	db 33, CONFUSE_RAY
	db 36, PSYBEAM
	db 39, NIGHT_SHADE
	db 42, SLEEP_POWDER
	db 45, GIGA_DRAIN
	db 48, PSYCHIC_M
	db 0 ; no more level-up moves

DiglettEvosAttacks:
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, GROWL
	db 9, MAGNITUDE
	db 17, DIG
	db 25, SAND_ATTACK
	db 33, SLASH
	db 41, EARTHQUAKE
	db 49, FISSURE
	db 0 ; no more level-up moves

DugtrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRI_ATTACK
	db 1, SCRATCH
	db 1, GROWL
	db 1, MAGNITUDE
	db 17, DIG
	db 25, SAND_ATTACK
	db 37, SLASH
	db 44, REVERSAL
	db 49, EARTHQUAKE
	db 61, FISSURE
	db 0 ; no more level-up moves

MeowthEvosAttacks:
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, GROWL
	db 11, BITE
	db 14, METAL_CLAW
	db 17, PAY_DAY
	db 21, FURY_SWIPES
	db 27, FAINT_ATTACK
	db 34, SCREECH
	db 38, SLASH
	db 0 ; no more level-up moves

PersianEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, CHARM
	db 1, BITE
	db 1, PAY_DAY
	db 14, METAL_CLAW
	db 21, FURY_SWIPES
	db 27, FAINT_ATTACK
	db 31, HYPNOSIS
	db 33, RAIN_DANCE
	db 33, THUNDER
	db 36, SCREECH
	db 39, THUNDER_WAVE
	db 41, SLASH
	db 44, SPITE
	db 47, BODY_SLAM
	db 52, FLAIL
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	db EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 5, TAIL_WHIP
	db 10, DISABLE
	db 16, CONFUSION
	db 23, SCREECH
	db 27, PSYBEAM
	db 31, PSYCH_UP
	db 40, FURY_SWIPES
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, TAIL_WHIP
	db 1, DISABLE
	db 1, CONFUSION
	db 23, SCREECH
	db 27, PSYBEAM
	db 31, PSYCH_UP
	db 34, TRI_ATTACK
	db 38, PSYCHIC_M
	db 44, FURY_SWIPES
	db 48, HYPNOSIS
	db 58, HYDRO_PUMP
	db 62, CROSS_CHOP
	db 66, PETAL_DANCE
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 9, LOW_KICK
	db 15, KARATE_CHOP
	db 21, FURY_SWIPES
	db 27, FOCUS_ENERGY
	db 33, SEISMIC_TOSS
	db 39, CROSS_CHOP
	db 45, SCREECH
	db 51, THRASH
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, LOW_KICK
	db 9, LOW_KICK
	db 15, KARATE_CHOP
	db 21, FURY_SWIPES
	db 27, FOCUS_ENERGY
	db 28, RAGE
	db 36, SEISMIC_TOSS
	db 45, CROSS_CHOP
	db 54, SCREECH
	db 63, THRASH
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	db EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	db 1, DRAGON_RAGE
	db 1, ROAR
	db 6, BITE
	db 10, EMBER
	db 16, LEER
	db 22, DOUBLE_KICK
	db 25, TAKE_DOWN
	db 29, FLAME_WHEEL
	db 33, AGILITY
	db 37, FLAMETHROWER
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGON_RAGE
	db 1, ROAR
	db 1, LEER
	db 1, FLAME_WHEEL
	db 30, TAKE_DOWN
	db 33, BODY_SLAM
	db 38, SKULL_BASH
	db 50, EXTREMESPEED
	db 55, CRUNCH
	db 58, REVERSAL
	db 61, OUTRAGE
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	db EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 4, HYPNOSIS
	db 7, WATER_GUN
	db 10, DOUBLESLAP
	db 13, RAIN_DANCE
	db 16, LOW_KICK
	db 19, ICY_WIND
	db 24, MIMIC
	db 30, BODY_SLAM
	db 37, BELLY_DRUM
	db 43, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, POLIWRATH
	db EVOLVE_ITEM, KINGS_ROCK, POLITOED
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, HYPNOSIS
	db 1, WATER_GUN
	db 10, DOUBLESLAP
	db 13, RAIN_DANCE
	db 16, LOW_KICK
	db 19, ICY_WIND
	db 24, MIMIC
	db 33, BODY_SLAM
	db 43, BELLY_DRUM
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 1, LOW_KICK
	db 24, FISSURE
	db 35, SUBMISSION
	db 51, MIND_READER
	db 56, HYDRO_PUMP
	db 0 ; no more level-up moves

AbraEvosAttacks:
	db EVOLVE_LEVEL, 20, KADABRA
	db 0 ; no more evolutions
	db 1, TELEPORT
	db 1, SNORE
	db 1, REST
	db 7, PSYWAVE
	db 9, SLEEP_TALK
	db 11, CONFUSION
	db 16, HIDDEN_POWER
	db 0 ; no more level-up moves

KadabraEvosAttacks:
	db EVOLVE_LEVEL, 40, ALAKAZAM
	db 0 ; no more evolutions
	db 1, KINESIS
	db 1, TELEPORT
	db 1, SNORE
	db 1, REST
	db 1, SLEEP_TALK
	db 7, PSYWAVE
	db 11, CONFUSION
	db 16, HIDDEN_POWER
	db 20, DISABLE
	db 26, PSYBEAM
	db 31, RECOVER
	db 37, FUTURE_SIGHT
	db 44, REFLECT
	db 49, PSYCHIC_M
	db 0 ; no more level-up moves

AlakazamEvosAttacks:
	db 0 ; no more evolutions
	db 1, KINESIS
	db 1, TELEPORT
	db 1, SNORE
	db 1, REST
	db 1, SLEEP_TALK
	db 7, PSYWAVE
	db 11, CONFUSION
	db 16, HIDDEN_POWER
	db 20, DISABLE
	db 26, PSYBEAM
	db 31, RECOVER
	db 37, FUTURE_SIGHT
	db 44, REFLECT
	db 56, PSYCHIC_M
	db 0 ; no more level-up moves

MachopEvosAttacks:
	db EVOLVE_LEVEL, 20, MACHOKE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 7, LOW_KICK
	db 10, FOCUS_ENERGY
	db 15, KARATE_CHOP
	db 20, FORESIGHT
	db 26, VITAL_THROW
	db 30, ROCK_SLIDE
	db 33, SUBMISSION
	db 35, SCARY_FACE
	db 38, EARTHQUAKE
	db 42, CROSS_CHOP
	db 46, SEISMIC_TOSS
	db 0 ; no more level-up moves

MachokeEvosAttacks:
	db EVOLVE_LEVEL, 40, MACHAMP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, LOW_KICK
	db 1, FOCUS_ENERGY
	db 15, KARATE_CHOP
	db 22, FORESIGHT
	db 29, VITAL_THROW
	db 36, ROCK_SLIDE
	db 38, SUBMISSION
	db 41, SCARY_FACE
	db 44, EARTHQUAKE
	db 47, CROSS_CHOP
	db 53, SEISMIC_TOSS
	db 0 ; no more level-up moves

MachampEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, LOW_KICK
	db 1, FOCUS_ENERGY
	db 8, FOCUS_ENERGY
	db 15, KARATE_CHOP
	db 22, FORESIGHT
	db 29, VITAL_THROW
	db 36, ROCK_SLIDE
	db 38, SUBMISSION
	db 43, SCARY_FACE
	db 46, EARTHQUAKE
	db 49, CROSS_CHOP
	db 56, SEISMIC_TOSS
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 6, GROWTH
	db 9, WRAP
	db 11, SLEEP_POWDER
	db 14, ACID
	db 17, STUN_SPORE
	db 20, POISONPOWDER
	db 25, LEECH_LIFE
	db 30, SWEET_SCENT
	db 34, GIGA_DRAIN
	db 38, SLAM
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, GROWTH
	db 1, WRAP
	db 11, SLEEP_POWDER
	db 14, ACID
	db 17, STUN_SPORE
	db 20, POISONPOWDER
	db 28, LEECH_LIFE
	db 33, SWEET_SCENT
	db 38, GIGA_DRAIN
	db 44, SLAM
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	db 1, VINE_WHIP
	db 1, SLEEP_POWDER
	db 1, SWEET_SCENT
	db 1, RAZOR_LEAF
	db 32, LEECH_LIFE
	db 35, SLUDGE_BOMB
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 6, SUPERSONIC
	db 12, CONSTRICT
	db 19, ACID
	db 25, BUBBLEBEAM
	db 30, WRAP
	db 36, BARRIER
	db 43, SCREECH
	db 49, HYDRO_PUMP
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, SUPERSONIC
	db 1, CONSTRICT
	db 19, ACID
	db 25, BUBBLEBEAM
	db 30, WRAP
	db 38, BARRIER
	db 42, CONFUSE_RAY
	db 45, SWORDS_DANCE
	db 47, SCREECH
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, HARDEN
	db 8, ROCK_THROW
	db 12, SANDSTORM
	db 16, MAGNITUDE
	db 19, RAPID_SPIN
	db 21, SELFDESTRUCT
	db 23, MEGA_PUNCH
	db 26, ROLLOUT
	db 31, ROCK_SLIDE
	db 36, EARTHQUAKE
	db 41, EXPLOSION
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	db EVOLVE_LEVEL, 36, GOLEM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 1, ROCK_THROW
	db 12, SANDSTORM
	db 16, MAGNITUDE
	db 19, RAPID_SPIN
	db 21, SELFDESTRUCT
	db 24, MEGA_PUNCH
	db 28, ROLLOUT
	db 34, ROCK_SLIDE
	db 41, EARTHQUAKE
	db 48, EXPLOSION
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 1, ROCK_THROW
	db 1, MAGNITUDE
	db 12, SANDSTORM
	db 19, RAPID_SPIN
	db 21, SELFDESTRUCT
	db 24, MEGA_PUNCH
	db 28, ROLLOUT
	db 34, ROCK_SLIDE
	db 43, EARTHQUAKE
	db 50, EXPLOSION
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	db EVOLVE_LEVEL, 40, RAPIDASH
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 8, TAIL_WHIP
	db 13, EMBER
	db 19, STOMP
	db 26, FIRE_SPIN
	db 29, FLAMETHROWER
	db 34, TAKE_DOWN
	db 39, HYPNOSIS
	db 43, AGILITY
	db 53, FIRE_BLAST
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, TAIL_WHIP
	db 1, EMBER
	db 19, STOMP
	db 26, FIRE_SPIN
	db 29, FLAMETHROWER
	db 34, TAKE_DOWN
	db 39, HYPNOSIS
	db 40, FURY_ATTACK
	db 45, AGILITY
	db 48, MEGAHORN
	db 53, HORN_DRILL
	db 57, EXTREMESPEED ; New Exclusive Midele Move
	db 60, FIRE_BLAST
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	db EVOLVE_LEVEL, 37, SLOWBRO
	db EVOLVE_ITEM, KINGS_ROCK, SLOWKING
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 6, GROWL
	db 9, WATER_GUN
	db 11, RAIN_DANCE
	db 14, CONFUSION
	db 17, FLAMETHROWER
	db 20, DISABLE
	db 23, BUBBLEBEAM
	db 26, PSYBEAM
	db 30, HEADBUTT
	db 34, ICY_WIND
	db 38, BODY_SLAM
	db 43, AMNESIA
	db 48, PSYCHIC_M
	db 53, LIGHT_SCREEN
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 1, GROWL
	db 1, WATER_GUN
	db 11, RAIN_DANCE
	db 14, CONFUSION
	db 17, FLAMETHROWER
	db 20, DISABLE
	db 23, BUBBLEBEAM
	db 26, PSYBEAM
	db 30, HEADBUTT
	db 34, ICY_WIND
	db 37, WITHDRAW
	db 42, BODY_SLAM
	db 46, AMNESIA
	db 54, PSYCHIC_M
	db 58, LIGHT_SCREEN
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	db 1, TACKLE
	db 6, THUNDERSHOCK
	db 11, SUPERSONIC
	db 16, SONICBOOM
	db 21, THUNDER_WAVE
	db 24, SPARK
	db 27, LOCK_ON
	db 31, THUNDERBOLT
	db 33, CONFUSE_RAY
	db 36, SWIFT
	db 39, SCREECH
	db 45, ZAP_CANNON
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, THUNDERSHOCK
	db 1, SUPERSONIC
	db 1, SONICBOOM
	db 21, THUNDER_WAVE
	db 24, SPARK
	db 27, LOCK_ON
	db 32, THUNDERBOLT
	db 34, CONFUSE_RAY
	db 36, TRI_ATTACK
	db 38, REFLECT
	db 41, LIGHT_SCREEN
	db 43, SCREECH
	db 46, EXPLOSION
	db 49, SUBSTITUTE
	db 53, ZAP_CANNON
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, SAND_ATTACK
	db 7, LEER
	db 13, FURY_ATTACK
	db 16, BODY_SLAM
	db 19, FURY_CUTTER
	db 21, SWORDS_DANCE
	db 25, AGILITY
	db 27, STEEL_WING
	db 29, BATON_PASS
	db 34, SLASH
	db 36, FALSE_SWIPE
	db 39, DOUBLE_EDGE
	db 42, FLAIL
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	db EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 6, PURSUIT
	db 9, QUICK_ATTACK
	db 13, FURY_ATTACK
	db 17, WING_ATTACK
	db 21, TRI_ATTACK
	db 25, RAGE
	db 28, ENDURE
	db 30, SWORDS_DANCE
	db 32, JUMP_KICK
	db 33, DRILL_PECK
	db 37, AGILITY
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, GROWL
	db 1, PURSUIT
	db 1, FURY_ATTACK
	db 9, QUICK_ATTACK
	db 17, WING_ATTACK
	db 21, TRI_ATTACK
	db 25, RAGE
	db 28, ENDURE
	db 30, SWORDS_DANCE
	db 35, JUMP_KICK
	db 38, DRILL_PECK
	db 42, BATON_PASS
	db 47, AGILITY
	db 50, EXTREMESPEED ; New Exclusive Midele Move
	db 56, THRASH
	db 0 ; no more level-up moves

SeelEvosAttacks:
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 5, GROWL
	db 16, AURORA_BEAM
	db 21, REST
	db 24, BUBBLEBEAM
	db 28, RAIN_DANCE
	db 32, TAKE_DOWN
	db 35, DISABLE
	db 37, ICE_BEAM
	db 43, HORN_DRILL
	db 48, SAFEGUARD
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	db 1, HEADBUTT
	db 1, GROWL
	db 1, AURORA_BEAM
	db 21, REST
	db 24, BUBBLEBEAM
	db 28, RAIN_DANCE
	db 32, TAKE_DOWN
	db 37, DISABLE
	db 42, ICE_BEAM
	db 45, HORN_DRILL
	db 48, MEGAHORN
	db 51, SAFEGUARD
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	db EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, POUND
	db 5, HARDEN
	db 10, DISABLE
	db 16, SLUDGE
	db 23, MINIMIZE
	db 31, GIGA_DRAIN
	db 35, SCREECH
	db 40, ACID_ARMOR
	db 50, SLUDGE_BOMB
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, POUND
	db 1, HARDEN
	db 10, DISABLE
	db 16, SLUDGE
	db 23, MINIMIZE
	db 31, GIGA_DRAIN
	db 35, SCREECH
	db 43, ACID_ARMOR
	db 46, ROCK_SLIDE
	db 50, EXPLOSION
	db 54, SLUDGE_BOMB
	db 0 ; no more level-up moves

ShellderEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, CLOYSTER
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, WITHDRAW
	db 9, SCREECH
	db 17, AURORA_BEAM
	db 25, SUPERSONIC
	db 29, BUBBLEBEAM
	db 33, SPIKES
	db 36, PROTECT
	db 41, CLAMP
	db 49, ICE_BEAM
	db 0 ; no more level-up moves

CloysterEvosAttacks:
	db 0 ; no more evolutions
	db 1, WITHDRAW
	db 1, SUPERSONIC
	db 1, AURORA_BEAM
	db 1, PROTECT
	db 9, SCREECH
if _CRYSTAL
	db 33, SPIKES
endc
	db 41, SPIKE_CANNON
	db 45, HYDRO_PUMP
	db 52, EXPLOSION
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 6, SPITE
	db 9, MEAN_LOOK
	db 11, NIGHT_SHADE
	db 14, CURSE
	db 17, POISON_GAS
	db 20, CONFUSE_RAY
	db 26, ICY_WIND
	db 33, DREAM_EATER
	db 36, DESTINY_BOND
	db 40, EXPLOSION
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	db EVOLVE_LEVEL, 36, GENGAR
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 1, SPITE
	db 6, MEAN_LOOK
	db 11, NIGHT_SHADE
	db 14, CURSE
	db 17, POISON_GAS
	db 20, CONFUSE_RAY
	db 29, ICY_WIND
	db 39, DREAM_EATER
	db 48, DESTINY_BOND
	db 53, EXPLOSION
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	db 1, HYPNOSIS
	db 1, LICK
	db 1, SPITE
	db 1, MEAN_LOOK
	db 11, NIGHT_SHADE
	db 14, CURSE
	db 17, POISON_GAS
	db 20, CONFUSE_RAY
	db 29, ICY_WIND
	db 42, DREAM_EATER
	db 50, DESTINY_BOND
	db 56, EXPLOSION
	db 0 ; no more level-up moves

OnixEvosAttacks:
	db EVOLVE_ITEM, METAL_COAT, STEELIX
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SHARPEN
	db 10, BIND
	db 14, ROCK_THROW
	db 18, HARDEN
	db 23, SCREECH
	db 27, RAGE
	db 34, ROCK_SLIDE
	db 36, SANDSTORM
	db 40, SLAM
	db 54, EXPLOSION
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	db EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HYPNOSIS
	db 10, MEDITATE
	db 16, CONFUSION
	db 20, HEADBUTT
	db 24, PSYBEAM
	db 30, POISON_GAS
	db 36, DISABLE
	db 40, PSYCHIC_M
	db 43, PSYCH_UP
	db 45, FUTURE_SIGHT
	db 51, BELLY_DRUM
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, HYPNOSIS
	db 1, MEDITATE
	db 1, CONFUSION
	db 20, HEADBUTT
	db 24, PSYBEAM
	db 33, POISON_GAS
	db 40, DISABLE
	db 49, PSYCHIC_M
	db 55, PSYCH_UP
	db 60, FUTURE_SIGHT
	db 64, BELLY_DRUM
	db 64, BATON_PASS
	db 0 ; no more level-up moves

KrabbyEvosAttacks:
	db EVOLVE_LEVEL, 28, KINGLER
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 5, LEER
	db 9, HARDEN
	db 12, VICEGRIP
	db 16, METAL_CLAW
	db 23, STOMP
	db 27, GUILLOTINE
	db 30, PROTECT
	db 34, CRABHAMMER
	db 0 ; no more level-up moves

KinglerEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, LEER
	db 1, HARDEN
	db 1, VICEGRIP
	db 16, METAL_CLAW
	db 23, STOMP
	db 27, GUILLOTINE
	db 32, PROTECT
	db 35, SWORDS_DANCE
	db 38, CRABHAMMER
	db 41, AGILITY
	db 43, BODY_SLAM
	db 46, ROCK_SLIDE
	db 52, AMNESIA
	db 55, FLAIL
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, THUNDERSHOCK
	db 9, SCREECH
	db 17, SONICBOOM
	db 21, SPARK
	db 23, SELFDESTRUCT
	db 29, ROLLOUT
	db 31, THUNDER_WAVE
	db 33, LIGHT_SCREEN
	db 37, SWIFT
	db 39, EXPLOSION
	db 41, MIRROR_COAT
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	db 1, SWIFT
	db 1, SCREECH
	db 1, SONICBOOM
	db 1, SPARK
	db 23, SELFDESTRUCT
	db 29, ROLLOUT
	db 30, THUNDERBOLT
	db 32, THUNDER_WAVE
	db 34, LIGHT_SCREEN
	db 37, SUBSTITUTE
	db 40, RAIN_DANCE
	db 40, THUNDER
	db 44, EXPLOSION
	db 48, MIRROR_COAT
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	db EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	db 1, BARRAGE
	db 1, HYPNOSIS
	db 7, REFLECT
	db 9, LEECH_SEED
	db 12, CONFUSION
	db 15, MEGA_DRAIN
	db 18, STUN_SPORE
	db 21, POISONPOWDER
	db 23, SLEEP_POWDER
	db 25, PSYBEAM
	db 27, SYNTHESIS
	db 33, ANCIENTPOWER
	db 36, GIGA_DRAIN
	db 43, SOLARBEAM
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	db 1, BARRAGE
	db 1, HYPNOSIS
	db 1, CONFUSION
	db 16, MEGA_DRAIN
	db 19, STOMP
	db 21, LOW_KICK
	db 24, PSYBEAM
	db 28, DREAM_EATER
	db 31, EGG_BOMB
	db 40, EXPLOSION
	db 43, PSYCHIC_M
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, RAGE
	db 5, LEER
	db 9, BONE_CLUB
	db 13, HEADBUTT
	db 17, DOUBLE_KICK
	db 21, FOCUS_ENERGY
	db 25, BONEMERANG
	db 29, BONE_RUSH
	db 33, FALSE_SWIPE
	db 37, THRASH
	db 41, SWORDS_DANCE
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, RAGE
	db 1, LEER
	db 1, BONE_CLUB
	db 13, HEADBUTT
	db 17, DOUBLE_KICK
	db 21, FOCUS_ENERGY
	db 25, BONEMERANG
	db 32, BONE_RUSH
	db 36, ROCK_SLIDE
	db 39, FALSE_SWIPE
	db 42, SUBMISSION
	db 46, THRASH
	db 53, SWORDS_DANCE
	db 0 ; no more level-up moves

HitmonleeEvosAttacks:
	db 0 ; no more evolutions
	db 1, DOUBLE_KICK
	db 6, MEDITATE
	db 21, FOCUS_ENERGY
	db 24, FORESIGHT
	db 28, ROLLING_KICK
	db 31, MIND_READER
	db 34, ROCK_SLIDE
	db 43, JUMP_KICK
	db 46, MEGA_KICK
	db 52, HI_JUMP_KICK
	db 56, REVERSAL
	db 56, ENDURE
	db 0 ; no more level-up moves

HitmonchanEvosAttacks:
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 7, AGILITY
	db 13, PURSUIT
	db 26, THUNDERPUNCH
	db 26, ICE_PUNCH
	db 26, FIRE_PUNCH
	db 32, SUBMISSION
	db 34, ROCK_SLIDE
	db 38, MEGA_PUNCH
	db 42, HI_JUMP_KICK
	db 44, DETECT
	db 50, COUNTER
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 7, SUPERSONIC
	db 13, AMNESIA
	db 19, STOMP
	db 25, WRAP
	db 31, DISABLE
	db 34, ROCK_SLIDE
	db 37, SLAM
	db 40, SUBMISSION
	db 43, CURSE
	db 45, SCREECH
	db 48, BODY_SLAM
	db 51, SWORDS_DANCE
	db 54, DOUBLE_EDGE
	db 58, FISSURE
	db 61, HEAL_BELL
	db 66, THRASH
	db 69, SEISMIC_TOSS
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	db EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, TACKLE
	db 9, SMOG
	db 17, SMOKESCREEN
	db 21, SLUDGE
	db 25, SELFDESTRUCT
	db 33, HAZE
	db 41, EXPLOSION
	db 45, DESTINY_BOND
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_GAS
	db 1, TACKLE
	db 1, SMOG
	db 1, SMOKESCREEN
	db 21, SLUDGE
	db 25, SELFDESTRUCT
	db 33, HAZE
	db 44, EXPLOSION
	db 51, DESTINY_BOND
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	db EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 13, STOMP
	db 19, FURY_ATTACK
	db 24, ROCK_SLIDE
	db 31, SCARY_FACE
	db 37, HORN_DRILL
	db 49, TAKE_DOWN
	db 55, EARTHQUAKE
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, TAIL_WHIP
	db 1, STOMP
	db 1, FURY_ATTACK
	db 24, ROCK_SLIDE
	db 31, SCARY_FACE
	db 37, HORN_DRILL
	db 43, SUBMISSION
	db 46, SWORDS_DANCE
	db 54, TAKE_DOWN
	db 59, MEGAHORN
	db 65, EARTHQUAKE
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	db 1, POUND
	db 5, GROWL
	db 9, TAIL_WHIP
	db 13, SOFTBOILED
	db 17, DOUBLESLAP
	db 20, METRONOME
	db 23, MINIMIZE
	db 26, BUBBLEBEAM
	db 29, SING
	db 35, EGG_BOMB
	db 38, SEISMIC_TOSS
	db 41, DEFENSE_CURL
	db 49, LIGHT_SCREEN
	db 57, DOUBLE_EDGE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	db 0 ; no more evolutions
	db 1, BIND
	db 4, SLEEP_POWDER
	db 10, ABSORB
	db 13, POISONPOWDER
	db 19, VINE_WHIP
	db 25, MIMIC
	db 28, MEGA_DRAIN
	db 31, SUBSTITUTE
	db 34, STUN_SPORE
	db 38, ANCIENTPOWER
	db 40, SLAM
	db 43, LEECH_SEED
	db 46, GROWTH
	db 49, SWORDS_DANCE
	db 51, BODY_SLAM
	db 54, PAIN_SPLIT
	db 57, GIGA_DRAIN
	db 61, DOUBLE_EDGE
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 7, LEER
	db 13, BITE
	db 19, TAIL_WHIP
	db 25, MEGA_PUNCH
	db 31, RAGE
	db 37, ENDURE
	db 41, SUBMISSION
	db 43, DIZZY_PUNCH
	db 49, REVERSAL
	db 54, BODY_SLAM
	db 58, ROCK_SLIDE
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	db EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 8, SMOKESCREEN
	db 15, LEER
	db 22, WATER_GUN
	db 29, TWISTER
	db 33, BUBBLEBEAM
	db 36, AGILITY
	db 43, HYDRO_PUMP
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	db EVOLVE_ITEM, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, SMOKESCREEN
	db 1, LEER
	db 1, WATER_GUN
	db 29, TWISTER
	db 35, BUBBLEBEAM
	db 40, AGILITY
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

GoldeenEvosAttacks:
	db EVOLVE_LEVEL, 33, SEAKING
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 10, SUPERSONIC
	db 15, HORN_ATTACK
	db 20, PSYBEAM
	db 24, FLAIL
	db 29, FURY_ATTACK
	db 32, BUBBLEBEAM
	db 38, WATERFALL
	db 43, HORN_DRILL
	db 52, AGILITY
	db 0 ; no more level-up moves

SeakingEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, TAIL_WHIP
	db 10, SUPERSONIC
	db 15, HORN_ATTACK
	db 20, PSYBEAM
	db 24, FLAIL
	db 29, FURY_ATTACK
	db 32, BUBBLEBEAM
	db 41, WATERFALL
	db 43, SWORDS_DANCE
	db 49, HORN_DRILL
	db 55, AGILITY
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	db EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, HARDEN
	db 7, WATER_GUN
	db 13, RAPID_SPIN
	db 19, RECOVER
	db 25, SWIFT
	db 31, BUBBLEBEAM
	db 37, MINIMIZE
	db 43, LIGHT_SCREEN
	db 47, PSYCHIC_M
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, RAPID_SPIN
	db 1, RECOVER
	db 1, BUBBLEBEAM
	db 37, CONFUSE_RAY
	db 43, LIGHT_SCREEN
	db 47, PSYCHIC_M
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	db 1, BARRIER
	db 6, CONFUSION
	db 11, SUBSTITUTE
	db 16, MEDITATE
	db 21, DOUBLESLAP
	db 26, LIGHT_SCREEN
	db 26, REFLECT
	db 31, ENCORE
	db 36, PSYBEAM
	db 41, BATON_PASS
	db 46, SAFEGUARD
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	db EVOLVE_ITEM, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 18, FALSE_SWIPE
	db 24, AGILITY
	db 30, WING_ATTACK
	db 36, SLASH
	db 42, SWORDS_DANCE
	db 48, DOUBLE_TEAM
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LICK
	db 1, LOVELY_KISS
	db 1, POWDER_SNOW
	db 21, DOUBLESLAP
	db 25, ICE_PUNCH
	db 31, HEAL_BELL
	db 35, MEAN_LOOK
	db 41, BODY_SLAM
	db 51, PERISH_SONG
	db 57, BLIZZARD
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 1, THUNDERPUNCH
	db 17, LIGHT_SCREEN
	db 25, SWIFT
	db 36, SCREECH
	db 47, THUNDERBOLT
	db 58, THUNDER
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	db 0 ; no more evolutions
	db 1, EMBER
	db 1, LEER
	db 1, SMOG
	db 1, FIRE_PUNCH
	db 25, SMOKESCREEN
	db 33, SUNNY_DAY
	db 41, FLAMETHROWER
	db 49, CONFUSE_RAY
	db 57, FIRE_BLAST
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	db 1, MEGAHORN ; New Exclusive Midele Move
	db 1, CROSS_CHOP ; New Exclusive Midele Move
	db 1, BIND
	db 1, HARDEN
	db 4, VICEGRIP
	db 7, FOCUS_ENERGY
	db 10, FALSE_SWIPE
	db 13, QUICK_ATTACK
	db 17, SEISMIC_TOSS
	db 20, SLASH
	db 24, SUBSTITUTE
	db 27, VITAL_THROW
	db 31, GUILLOTINE
	db 34, CURSE
	db 37, SUBMISSION
	db 40, ROCK_SLIDE
	db 43, SWORDS_DANCE
	db 46, REVERSAL
	db 46, ENDURE
	db 50, BODY_SLAM
	db 55, THRASH
	db 0 ; no more level-up moves

TaurosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 4, TACKLE
	db 8, RAGE
	db 13, PURSUIT
	db 19, SCARY_FACE
	db 26, HORN_ATTACK
	db 34, REST
	db 38, TAKE_DOWN
	db 43, BODY_SLAM
	db 47, HORN_DRILL
	db 53, MEGAHORN
	db 56, THRASH
	db 59, REVERSAL
	db 61, ROCK_SLIDE
	db 65, DOUBLE_EDGE
	db 0 ; no more level-up moves

MagikarpEvosAttacks:
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0 ; no more evolutions
	db 1, SPLASH
	db 15, TACKLE
	db 30, FLAIL
	db 35, DRAGON_RAGE
	db 40, HYDRO_PUMP
	db 0 ; no more level-up moves

GyaradosEvosAttacks:
	db 0 ; no more evolutions
	db 1, THRASH
	db 1, DRAGON_RAGE
	db 20, BITE
	db 25, LEER
	db 33, BODY_SLAM
	db 35, TWISTER
	db 40, HYDRO_PUMP
	db 45, RAIN_DANCE
	db 50, HYPER_BEAM
	db 54, THUNDER_WAVE
	db 0 ; no more level-up moves

LaprasEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGON_RAGE
	db 1, WATER_GUN
	db 1, GROWL
	db 1, SING
	db 8, MIST
	db 15, BODY_SLAM
	db 22, CONFUSE_RAY
	db 29, PERISH_SONG
	db 32, HEAL_BELL
	db 36, ICE_BEAM
	db 40, RAIN_DANCE
	db 43, MEGAHORN
	db 46, HORN_DRILL
	db 50, SAFEGUARD
	db 57, HYDRO_PUMP
	db 0 ; no more level-up moves

DittoEvosAttacks:
	db 0 ; no more evolutions
	db 1, TRANSFORM
	db 0 ; no more level-up moves

EeveeEvosAttacks:
	db EVOLVE_ITEM, THUNDERSTONE, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, VAPOREON
	db EVOLVE_ITEM, FIRE_STONE, FLAREON
	db EVOLVE_HAPPINESS, TR_MORNDAY, ESPEON
	db EVOLVE_HAPPINESS, TR_NITE, UMBREON
	db 0 ; no more evolutions
	db 1, TAIL_WHIP
	db 1, PAY_DAY
	db 8, SAND_ATTACK
	db 13, GROWTH
	db 16, GROWL
	db 21, DOUBLE_KICK
	db 23, QUICK_ATTACK
	db 26, HEAL_BELL
	db 30, BITE
if _CRYSTAL
	db 36, BATON_PASS
else
	db 36, FOCUS_ENERGY
endc
	db 42, TAKE_DOWN
	db 48, DOUBLE_EDGE
	db 0 ; no more level-up moves

VaporeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, WATER_GUN
	db 23, QUICK_ATTACK
	db 26, AURORA_BEAM
	db 30, BITE
	db 37, HAZE
	db 45, ACID_ARMOR
	db 52, HYDRO_PUMP
	db 0 ; no more level-up moves

JolteonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, THUNDERSHOCK
	db 21, PIN_MISSILE
	db 23, QUICK_ATTACK
	db 26, BITE
	db 28, REFLECT
	db 30, DOUBLE_KICK
	db 36, LIGHT_SCREEN
	db 39, THUNDER_WAVE
	db 42, THUNDERBOLT
	db 47, AGILITY
	db 52, THUNDER
	db 0 ; no more level-up moves

FlareonEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, LEER
	db 8, SAND_ATTACK
	db 16, EMBER
	db 23, QUICK_ATTACK
	db 28, CURSE
	db 26, ZAP_CANNON
	db 30, BITE
	db 33, FIRE_SPIN
	db 36, SCARY_FACE
	db 40, IRON_TAIL
	db 43, BODY_SLAM
	db 47, FLAMETHROWER
	db 52, DOUBLE_EDGE
	db 0 ; no more level-up moves

PorygonEvosAttacks:
	db EVOLVE_ITEM, UP_GRADE, PORYGON2
	db 0 ; no more evolutions
	db 1, CONVERSION2
	db 1, TACKLE
	db 1, CONVERSION
	db 9, AGILITY
	db 12, PSYBEAM
	db 20, RECOVER
	db 24, SHARPEN
	db 32, LOCK_ON
	db 36, TRI_ATTACK
	db 44, ZAP_CANNON
	db 48, BARRIER
	db 54, THUNDER_WAVE
	db 0 ; no more level-up moves

OmanyteEvosAttacks:
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 13, BITE
	db 19, WATER_GUN
	db 31, LEER
	db 34, SPIKES
	db 37, PROTECT
	db 49, ANCIENTPOWER
	db 55, HYDRO_PUMP
	db 0 ; no more level-up moves

OmastarEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 1, BITE
	db 19, WATER_GUN
	db 31, LEER
	db 34, SPIKES
	db 37, PROTECT
	db 40, SPIKE_CANNON
	db 43, HORN_DRILL
	db 46, SEISMIC_TOSS
	db 54, ANCIENTPOWER
	db 65, HYDRO_PUMP
	db 0 ; no more level-up moves

KabutoEvosAttacks:
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 10, ABSORB
	db 19, LEER
	db 24, MEGA_DRAIN
	db 28, SAND_ATTACK
	db 37, ENDURE
	db 43, LEECH_LIFE
	db 55, ANCIENTPOWER
	db 0 ; no more level-up moves

KabutopsEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, HARDEN
	db 1, ABSORB
	db 19, LEER
	db 24, MEGA_DRAIN
	db 28, SAND_ATTACK
	db 37, ENDURE
	db 40, SLASH
	db 43, SUBMISSION
	db 46, SWORDS_DANCE
	db 49, LEECH_LIFE
	db 54, HYDRO_PUMP
	db 65, ANCIENTPOWER
	db 0 ; no more level-up moves

AerodactylEvosAttacks:
	db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 8, AGILITY
	db 15, BITE
	db 20, DRAGON_RAGE
	db 22, SUPERSONIC
	db 29, ANCIENTPOWER
	db 36, SCARY_FACE
	db 43, TAKE_DOWN
	db 47, ROCK_SLIDE
	db 50, HYPER_BEAM
	db 55, EARTHQUAKE
	db 0 ; no more level-up moves

SnorlaxEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 8, AMNESIA
	db 15, DEFENSE_CURL
	db 22, BELLY_DRUM
	db 29, HEADBUTT
	db 36, SNORE
	db 36, REST
	db 43, BODY_SLAM
	db 50, ROLLOUT
	db 57, HYPER_BEAM
	db 65, SELFDESTRUCT
	db 0 ; no more level-up moves

ArticunoEvosAttacks:
	db 0 ; no more evolutions
	db 1, GUST
	db 1, POWDER_SNOW
	db 1, HEAL_BELL
	db 13, MIST
	db 18, MIND_READER
	db 25, AGILITY
	db 30, ANCIENTPOWER
	db 37, BUBBLEBEAM
	db 49, ICE_BEAM
	db 61, REFLECT
	db 73, SKY_ATTACK
	db 100, BLIZZARD
	db 100, REST
	db 100, SLEEP_TALK
	db 100, TOXIC
	db 0 ; no more level-up moves

ZapdosEvosAttacks:
    db 0 ; no more evolutions
	db 1, PECK
	db 1, THUNDERSHOCK
	db 13, THUNDER_WAVE
	db 18, DETECT
	db 25, AGILITY
	db 30, ANCIENTPOWER
	db 37, THUNDERBOLT
	db 49, DRILL_PECK
	db 61, LIGHT_SCREEN
	db 73, SKY_ATTACK
	db 100, THUNDER
	db 100, REST
	db 100, SLEEP_TALK
	db 100, DRILL_PECK
	db 0 ; no more level-up moves

MoltresEvosAttacks:
    db 0 ; no more evolutions
	db 1, WING_ATTACK
	db 1, EMBER
	db 13, FIRE_SPIN
	db 18, ENDURE
	db 25, AGILITY
	db 30, ANCIENTPOWER
	db 37, SOLARBEAM
	db 49, FLAMETHROWER
	db 61, SAFEGUARD
	db 73, SKY_ATTACK
	db 100, FIRE_BLAST
	db 100, REST
	db 100, SLEEP_TALK
	db 100, TOXIC
	db 0 ; no more level-up moves

DratiniEvosAttacks:
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0 ; no more evolutions
	db 1, DRAGON_RAGE
	db 1, LEER
	db 1, WRAP
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 24, SLAM
	db 29, BUBBLEBEAM
	db 33, FIRE_SPIN
	db 36, AGILITY
	db 43, SAFEGUARD
	db 50, OUTRAGE
	db 57, HYPER_BEAM
	db 0 ; no more level-up moves

DragonairEvosAttacks:
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0 ; no more evolutions
	db 1, DRAGON_RAGE
	db 1, LEER
	db 1, WRAP
	db 8, THUNDER_WAVE
	db 15, TWISTER
	db 24, SLAM
	db 29, BUBBLEBEAM
	db 36, FIRE_SPIN
	db 43, AGILITY
	db 47, SAFEGUARD
	db 51, HORN_DRILL
	db 56, OUTRAGE
	db 60, HEAL_BELL
	db 65, HYPER_BEAM
	db 70, BARRIER
	db 0 ; no more level-up moves

DragoniteEvosAttacks:
	db 0 ; no more evolutions
	db 1, DRAGON_RAGE
	db 1, WRAP
	db 1, LEER
	db 1, THUNDER_WAVE
	db 15, TWISTER
	db 24, SLAM
	db 29, BUBBLEBEAM
	db 36, FIRE_SPIN
	db 43, AGILITY
	db 47, SAFEGUARD
	db 51, HORN_DRILL
	db 55, WING_ATTACK
	db 61, OUTRAGE
	db 75, HYPER_BEAM
	db 100, EXTREMESPEED
	db 0 ; no more level-up moves

MewtwoEvosAttacks:
    db 0 ; no more evolutions
    db 1, CONFUSION
    db 1, DISABLE
    db 1, SELFDESTRUCT
    db 11, MIST
    db 22, SWIFT
    db 33, BARRIER
    db 44, FUTURE_SIGHT
    db 55, RECOVER
    db 66, PSYCHIC_M
    db 77, AMNESIA
    db 88, PSYCH_UP
    db 99, SAFEGUARD
    db 100, RECOVER
    db 100, PSYCHIC_M
    db 100, SUBMISSION
    db 100, ICE_BEAM
    db 0 ; no more level-up moves

MewEvosAttacks:
	db 0 ; no more evolutions
	db 1, PAY_DAY
	db 10, MEGA_PUNCH
	db 20, METRONOME
	db 30, PSYCHIC_M
	db 40, BARRIER
	db 50, ANCIENTPOWER
	db 60, AMNESIA
	db 70, BATON_PASS
	db 80, SWORDS_DANCE
	db 90, TRANSFORM
	db 100, EXPLOSION
	db 100, HYPNOSIS
	db 100, THUNDER_WAVE
	db 100, LEECH_LIFE
	db 0 ; no more level-up moves

ChikoritaEvosAttacks:
	db EVOLVE_LEVEL, 16, BAYLEEF
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 8, RAZOR_LEAF
	db 12, REFLECT
	db 15, POISONPOWDER
	db 22, SYNTHESIS
	db 29, BODY_SLAM
	db 36, LIGHT_SCREEN
	db 43, SAFEGUARD
	db 50, SOLARBEAM
	db 0 ; no more level-up moves

BayleefEvosAttacks:
	db EVOLVE_LEVEL, 32, MEGANIUM
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, RAZOR_LEAF
	db 1, REFLECT
	db 15, POISONPOWDER
	db 23, SYNTHESIS
	db 31, BODY_SLAM
	db 39, LIGHT_SCREEN
	db 47, SAFEGUARD
	db 55, SOLARBEAM
	db 0 ; no more level-up moves

MeganiumEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, RAZOR_LEAF
	db 1, REFLECT
	db 15, POISONPOWDER
	db 23, SYNTHESIS
	db 31, BODY_SLAM
	db 35, SWORDS_DANCE
	db 39, EARTHQUAKE
	db 41, LIGHT_SCREEN
	db 45, GIGA_DRAIN
	db 48, LEECH_SEED
	db 51, SAFEGUARD
	db 57, OUTRAGE
	db 61, SOLARBEAM
	db 0 ; no more level-up moves

CyndaquilEvosAttacks:
	db EVOLVE_LEVEL, 14, QUILAVA
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, SMOKESCREEN
	db 12, EMBER
	db 19, QUICK_ATTACK
	db 23, FLAME_WHEEL
	db 26, SWIFT
	db 29, LOW_KICK
	db 32, SUNNY_DAY
	db 36, FLAMETHROWER
	db 0 ; no more level-up moves

QuilavaEvosAttacks:
	db EVOLVE_LEVEL, 36, TYPHLOSION
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, SMOKESCREEN
	db 12, EMBER
	db 21, QUICK_ATTACK
	db 25, FLAME_WHEEL
	db 28, SWIFT
	db 31, LOW_KICK
	db 34, SUNNY_DAY
	db 38, FLAMETHROWER
	db 0 ; no more level-up moves

TyphlosionEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, SMOKESCREEN
	db 1, EMBER
	db 21, QUICK_ATTACK
	db 25, FLAME_WHEEL
	db 28, SWIFT
	db 31, LOW_KICK
	db 34, SUNNY_DAY
	db 40, FLAMETHROWER
	db 44, SOLARBEAM
	db 0 ; no more level-up moves

TotodileEvosAttacks:
	db EVOLVE_LEVEL, 18, CROCONAW
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 7, RAGE
	db 13, WATER_GUN
	db 20, BITE
	db 23, SCARY_FACE
	db 26, SLASH
	db 32, SCREECH
	db 40, HYDRO_PUMP
	db 0 ; no more level-up moves

CroconawEvosAttacks:
	db EVOLVE_LEVEL, 30, FERALIGATR
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, RAGE
	db 13, WATER_GUN
	db 21, BITE
	db 24, SCARY_FACE
	db 30, SLASH
	db 34, SCREECH
	db 42, HYDRO_PUMP
	db 0 ; no more level-up moves

FeraligatrEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, SCREECH
	db 1, RAGE
	db 1, WATER_GUN
	db 21, BITE
	db 24, SCARY_FACE
	db 30, SLASH
	db 38, SUBMISSION
	db 43, ROCK_SLIDE
	db 50, HYDRO_PUMP
	db 0 ; no more level-up moves

SentretEvosAttacks:
	db EVOLVE_LEVEL, 15, FURRET
	db 0 ; no more evolutions
	db 1, TACKLE
	db 5, DEFENSE_CURL
	db 11, QUICK_ATTACK
	db 17, FURY_SWIPES
	db 20, REVERSAL
	db 23, SLAM
	db 26, DIZZY_PUNCH
	db 29, CURSE
	db 32, AMNESIA
	db 40, DOUBLE_EDGE
	db 0 ; no more level-up moves

FurretEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, DEFENSE_CURL
	db 1, QUICK_ATTACK
	db 18, FURY_SWIPES
	db 24, REVERSAL
	db 28, DIZZY_PUNCH
	db 31, CURSE
	db 34, EXTREMESPEED ; New Exclusive Midele Move
	db 37, SWAGGER
	db 42, IRON_TAIL
	db 48, AMNESIA
	db 50, DOUBLE_EDGE
	db 53, SUPER_FANG
	db 57, BATON_PASS
	db 0 ; no more level-up moves

HoothootEvosAttacks:
	db EVOLVE_LEVEL, 20, NOCTOWL
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, FORESIGHT
	db 7, PECK
	db 9, CONFUSION
	db 11, WING_ATTACK
	db 14, HYPNOSIS
	db 17, REFLECT
	db 25, TAKE_DOWN
	db 33, DREAM_EATER
	db 0 ; no more level-up moves

NoctowlEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKY_ATTACK
	db 1, FUTURE_SIGHT
	db 1, FORESIGHT
	db 1, AGILITY
	db 9, CONFUSION
	db 11, WING_ATTACK
	db 14, HYPNOSIS
	db 17, REFLECT
	db 21, SCREECH
	db 23, FAINT_ATTACK
	db 26, RECOVER ; New Exclusive Midele Move
	db 30, TAKE_DOWN
	db 33, MIRROR_MOVE
	db 36, PSYCHIC_M
	db 39, AMNESIA
	db 44, MEAN_LOOK
	db 47, HYPNOSIS
	db 50, DREAM_EATER
	db 0 ; no more level-up moves

LedybaEvosAttacks:
	db EVOLVE_LEVEL, 18, LEDIAN
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 1, SUPERSONIC
	db 1, SAFEGUARD
	db 5, REFLECT
	db 7, SWIFT
	db 8, PSYBEAM
	db 10, LIGHT_SCREEN
	db 12, MORNING_SUN
	db 14, SWORDS_DANCE
	db 17, COUNTER
	db 19, DIZZY_PUNCH
	db 21, AGILITY
	db 25, ENCORE
	db 28, SUBSTITUTE
	db 31, DOUBLE_EDGE
	db 33, BATON_PASS
	db 0 ; no more level-up moves

LedianEvosAttacks:
	db 0 ; no more evolutions
	db 1, COMET_PUNCH
	db 1, SUPERSONIC
	db 1, SAFEGUARD
	db 1, SWAGGER
	db 5, REFLECT
	db 7, SWIFT
	db 8, PSYBEAM
	db 10, LIGHT_SCREEN
	db 12, MORNING_SUN
	db 14, SWORDS_DANCE
	db 17, COUNTER
	db 20, DIZZY_PUNCH
	db 22, DYNAMICPUNCH
	db 24, GIGA_DRAIN
	db 26, ICE_PUNCH
	db 28, THUNDERPUNCH
	db 30, SUBSTITUTE
	db 32, AGILITY
	db 35, ENCORE
	db 38, DOUBLE_EDGE
	db 43, BATON_PASS
	db 0 ; no more level-up moves

SpinarakEvosAttacks:
	db EVOLVE_LEVEL, 22, ARIADOS
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 6, SCARY_FACE
	db 8, CONSTRICT
	db 12, FURY_SWIPES
	db 16, TWINEEDLE
	db 19, NIGHT_SHADE
	db 21, PSYBEAM
	db 24, PIN_MISSILE
	db 31, LEECH_LIFE
	db 33, SPIDER_WEB
	if _CRYSTAL
	db 37, AGILITY
	else
	db 37, SCREECH
	endc
	db 41, PSYCHIC_M
	db 44, MEGAHORN
	db 0 ; no more level-up moves

AriadosEvosAttacks:
	db 0 ; no more evolutions
	db 1, SHADOW_BALL ; New Exclusive Midele Move (Ariados of the Anime)
	db 1, POISON_STING
	db 1, STRING_SHOT
	db 1, SCARY_FACE
	db 8, CONSTRICT
	db 12, FURY_SWIPES
	db 16, TWINEEDLE
	db 19, NIGHT_SHADE
	db 21, PSYBEAM
	db 26, PIN_MISSILE
	db 33, LEECH_LIFE
	db 40, SPIDER_WEB
	if _CRYSTAL
	db 44, AGILITY
	else
	db 44, SCREECH
	endc
	db 47, PSYCHIC_M
	db 50, MEGAHORN
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCREECH
	db 1, ABSORB
	db 1, SUPERSONIC
	db 1, HYPNOSIS
	db 12, BITE
	db 19, CONFUSE_RAY
	db 30, WING_ATTACK
	db 32, LEECH_LIFE
	db 36, SUPER_FANG
	db 42, MEAN_LOOK
	db 48, FLAIL
	db 55, HAZE
	db 0 ; no more level-up moves

ChinchouEvosAttacks:
	db EVOLVE_LEVEL, 27, LANTURN
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, THUNDER_WAVE
	db 5, SUPERSONIC
	db 13, FLAIL
	db 17, WATER_GUN
	db 20, PSYBEAM
	db 25, SPARK
	db 28, BUBBLEBEAM
	db 29, CONFUSE_RAY
	db 33, RAIN_DANCE
	db 36, THUNDERBOLT
	db 38, TAKE_DOWN
	db 41, HEAL_BELL
	db 44, HYDRO_PUMP
	db 0 ; no more level-up moves

LanturnEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, THUNDER_WAVE
	db 1, SUPERSONIC
	db 13, FLAIL
	db 17, WATER_GUN
	db 20, PSYBEAM
	db 25, SPARK
	db 30, BUBBLEBEAM
	db 33, CONFUSE_RAY
	db 37, RAIN_DANCE
	db 40, THUNDERBOLT
	db 45, TAKE_DOWN
	db 45, HEAL_BELL
	db 53, HYDRO_PUMP
	db 0 ; no more level-up moves

PichuEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, PIKACHU
	db 0 ; no more evolutions
	db 1, THUNDERSHOCK
	db 1, CHARM
	db 6, TAIL_WHIP
	db 8, THUNDER_WAVE
	db 11, SWEET_KISS
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	db 1, POUND
	db 1, CHARM
	db 4, ENCORE
	db 8, SING
	db 13, SWEET_KISS
	db 0 ; no more level-up moves

IgglybuffEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, JIGGLYPUFF
	db 0 ; no more evolutions
	db 1, SING
	db 1, CHARM
	db 4, DEFENSE_CURL
	db 9, POUND
	db 14, SWEET_KISS
	db 0 ; no more level-up moves

TogepiEvosAttacks:
	db EVOLVE_HAPPINESS, TR_ANYTIME, TOGETIC
	db 0 ; no more evolutions
	db 1, PRESENT
	db 1, CHARM
	db 5, METRONOME
	db 7, HEAL_BELL
	db 10, SWEET_KISS
	db 13, ANCIENTPOWER
	db 20, ENCORE
	db 24, SAFEGUARD
	db 27, DOUBLE_EDGE
	db 32, HEAL_BELL
	db 37, BATON_PASS
	db 0 ; no more level-up moves

TogeticEvosAttacks:
	db 0 ; no more evolutions
	db 1, PRESENT
	db 1, CHARM
	db 1, HEAL_BELL
	db 8, METRONOME
	db 12, SWEET_KISS
	db 15, ANCIENTPOWER
	db 25, ENCORE
	db 31, PSYCHIC_M
	db 34, SAFEGUARD
	db 38, BODY_SLAM
	db 41, BATON_PASS
	db 44, SEISMIC_TOSS
	db 49, COUNTER
	db 52, THUNDER_WAVE
	db 55, SUBSTITUTE
	db 58, DOUBLE_EDGE
	db 61, REFLECT
	db 64, LIGHT_SCREEN
	db 0 ; no more level-up moves

NatuEvosAttacks:
	db EVOLVE_LEVEL, 25, XATU
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 8, NIGHT_SHADE
	db 15, TELEPORT
	db 22, FUTURE_SIGHT
	db 26, PSYBEAM
	db 29, CONFUSE_RAY
	db 32, FAINT_ATTACK
	db 36, PSYCHIC_M
	db 39, THUNDER_WAVE
	db 0 ; no more level-up moves

XatuEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 1, LEER
	db 1, NIGHT_SHADE
	db 1, TELEPORT
	db 22, FUTURE_SIGHT
	db 28, PSYBEAM
	db 31, CONFUSE_RAY
	db 34, FAINT_ATTACK
	db 37, DRILL_PECK
	db 40, GIGA_DRAIN
	db 43, PSYCHIC_M
	db 46, PAIN_SPLIT
	db 53, THUNDER_WAVE
	db 0 ; no more level-up moves

MareepEvosAttacks:
	db EVOLVE_LEVEL, 15, FLAAFFY
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 6, THUNDERSHOCK
	db 9, HEAL_BELL
	db 11, THUNDER_WAVE
	db 14, COTTON_SPORE
	db 17, SPARK ; New Exclusive Midele Move
	db 20, CONFUSE_RAY
	db 24, BODY_SLAM
	db 30, LIGHT_SCREEN
	db 33, REFLECT
	db 37, THUNDER
	db 0 ; no more level-up moves

FlaaffyEvosAttacks:
	db EVOLVE_LEVEL, 30, AMPHAROS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 9, HEAL_BELL
	db 11, THUNDER_WAVE
	db 14, COTTON_SPORE
	db 17, SPARK ; New Exclusive Midele Move
	db 22, CONFUSE_RAY
	db 27, BODY_SLAM
	db 32, LIGHT_SCREEN
	db 36, REFLECT
	db 45, THUNDER
	db 0 ; no more level-up moves

AmpharosEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 1, THUNDERSHOCK
	db 1, THUNDER_WAVE
	db 9, HEAL_BELL
	db 14, COTTON_SPORE
	db 17, SPARK ; New Exclusive Midele Move
	db 22, CONFUSE_RAY
	db 27, BODY_SLAM
	db 30, THUNDERPUNCH
	db 35, LIGHT_SCREEN
	db 40, REFLECT
	db 46, OUTRAGE
	db 54, THUNDER
	db 0 ; no more level-up moves

BellossomEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, SWEET_SCENT
	db 1, STUN_SPORE
	db 1, PETAL_DANCE
	db 40, LEECH_SEED
	db 45, GIGA_DRAIN
	db 55, SOLARBEAM
	db 0 ; no more level-up moves

MarillEvosAttacks:
	db EVOLVE_LEVEL, 18, AZUMARILL
	db 0 ; no more evolutions
	db 1, PRESENT
	db 3, CURSE
	db 6, TAIL_WHIP
	db 8, WATER_GUN
	db 11, TACKLE
	db 15, ROLLOUT
	db 19, CHARM
	db 21, BUBBLEBEAM
	db 24, ENCORE
	db 28, DOUBLE_EDGE
	db 36, RAIN_DANCE
	db 0 ; no more level-up moves

AzumarillEvosAttacks:
	db 0 ; no more evolutions
	db 1, PRESENT
	db 1, CURSE
	db 1, TAIL_WHIP
	db 1, WATER_GUN
	db 15, ROLLOUT
	db 19, SUBSTITUTE
	db 22, CHARM
	db 25, BUBBLEBEAM
	db 26, ENCORE
	db 29, BELLY_DRUM
	db 32, PERISH_SONG
	db 36, DOUBLE_EDGE
	db 39, HYDRO_PUMP
	db 44, RAIN_DANCE
	db 0 ; no more level-up moves

SudowoodoEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROCK_THROW
	db 1, MIMIC
	db 10, FLAIL
	db 19, LOW_KICK
	db 25, SPIKES
	db 28, ROCK_SLIDE
	db 31, SUBSTITUTE
	db 34, BODY_SLAM
	db 37, FAINT_ATTACK
	db 46, SLAM
	db 51, EXPLOSION
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	db 1, JUMP_KICK  ; New Exclusive Midele Move (Politoed of the Anime)
	db 1, WATER_GUN
	db 1, HYPNOSIS
	db 1, DOUBLESLAP
	db 27, BODY_SLAM
	db 35, PERISH_SONG
	db 51, SWAGGER
	db 56, HYDRO_PUMP
	db 0 ; no more level-up moves

HoppipEvosAttacks:
	db EVOLVE_LEVEL, 18, SKIPLOOM
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, TAIL_WHIP
	db 1, TACKLE
	if _CRYSTAL
	db 5, SYNTHESIS
	else
	db 1, SYNTHESIS
	endc
	db 8, CONFUSION
	db 11, POISONPOWDER
	db 12, STUN_SPORE
	db 13, SLEEP_POWDER
	db 15, LEECH_SEED
	db 17, MEGA_DRAIN
	db 21, COTTON_SPORE
	db 25, SUBSTITUTE
	db 30, TOXIC
	db 34, GIGA_DRAIN
	db 38, ENCORE
	db 0 ; no more level-up moves

SkiploomEvosAttacks:
	db EVOLVE_LEVEL, 27, JUMPLUFF
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, TAIL_WHIP
	db 1, TACKLE
	if _CRYSTAL
	db 5, SYNTHESIS
	endc
	db 8, CONFUSION
	db 11, POISONPOWDER
	db 12, STUN_SPORE
	db 13, SLEEP_POWDER
	db 15, LEECH_SEED
	db 17, MEGA_DRAIN
	db 23, COTTON_SPORE
	db 26, SUBSTITUTE
	db 32, TOXIC
	db 36, GIGA_DRAIN
	db 41, ENCORE
	db 0 ; no more level-up moves

JumpluffEvosAttacks:
	db 0 ; no more evolutions
	db 1, SPLASH
	db 1, TAIL_WHIP
	db 1, TACKLE
	if _CRYSTAL
	db 5, SYNTHESIS
	endc
	db 8, CONFUSION
	db 11, POISONPOWDER
	db 12, STUN_SPORE
	db 13, SLEEP_POWDER
	db 15, LEECH_SEED
	db 23, COTTON_SPORE
	db 26, SUBSTITUTE
	db 34, TOXIC
	db 37, GIGA_DRAIN
	db 43, ENCORE
	db 0 ; no more level-up moves

AipomEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, SCREECH
	db 4, SAND_ATTACK
	db 8, CURSE
	db 10, TOXIC
	db 10, PROTECT
	db 12, FURY_SWIPES
	db 14, LOW_KICK
	db 17, SWIFT
	db 20, SLAM
	db 23, AGILITY
	db 26, SHADOW_BALL
	db 29, BODY_SLAM
	db 30, BATON_PASS
	db 32, THUNDER_WAVE
	db 35, SUBSTITUTE
	db 38, MEGA_KICK
	db 44, DOUBLE_EDGE
	db 0 ; no more level-up moves

SunkernEvosAttacks:
	db EVOLVE_ITEM, SUN_STONE, SUNFLORA
	db 0 ; no more evolutions
	db 1, ABSORB
	db 4, GROWTH
	db 10, MEGA_DRAIN
	db 13, LEECH_SEED
	db 16, RAZOR_LEAF
	db 21, SYNTHESIS
	db 22, GIGA_DRAIN
	db 27, DOUBLE_EDGE
	db 0 ; no more level-up moves

SunfloraEvosAttacks:
	db 0 ; no more evolutions
	db 1, ABSORB
	db 1, DOUBLE_EDGE
	db 1, SWORDS_DANCE
	db 1, GROWTH
	db 10, MEGA_DRAIN
	db 13, LEECH_SEED
	db 16, RAZOR_LEAF
	db 22, GIGA_DRAIN
	db 24, ENCORE
	db 28, PETAL_DANCE
	db 31, SOLARBEAM
	db 31, SUNNY_DAY
	db 34, MIMIC
	db 37, SLUDGE_BOMB
	db 39, REST
	db 39, SLEEP_TALK
	db 41, LIGHT_SCREEN
	db 0 ; no more level-up moves

YanmaEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, FORESIGHT
	db 7, SONICBOOM
	db 10, SUPERSONIC
	db 13, QUICK_ATTACK
	db 15, SWORDS_DANCE
	db 17, PURSUIT
	db 18, HYPNOSIS
	db 21, DREAM_EATER
	db 24, WING_ATTACK
	db 28, ANCIENTPOWER
	db 29, GIGA_DRAIN
	db 31, DOUBLE_TEAM
	db 32, LEECH_LIFE
	db 34, REVERSAL
	db 37, PSYCHIC_M
	db 39, SCREECH
	db 44, DOUBLE_EDGE
	db 0 ; no more level-up moves

WooperEvosAttacks:
	db EVOLVE_LEVEL, 20, QUAGSIRE
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 6, RAIN_DANCE
	db 9, DOUBLE_KICK
	db 11, SLAM
	db 15, ICY_WIND
	db 21, AMNESIA
	db 26, RECOVER
	db 31, ROCK_SLIDE
	db 38, EARTHQUAKE
	db 45, HYDRO_PUMP
	db 51, MIST
	db 51, HAZE
	db 0 ; no more level-up moves

QuagsireEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 1, TAIL_WHIP
	db 1, RAIN_DANCE
	db 1, DOUBLE_KICK
	db 11, SLAM
	db 15, ICY_WIND
	db 27, AMNESIA
	db 33, RECOVER
	db 37, ROCK_SLIDE
	db 45, EARTHQUAKE
	db 53, HYDRO_PUMP
	db 59, MIST
	db 59, HAZE
	db 0 ; no more level-up moves

EspeonEvosAttacks:
	db 0 ; no more evolutions
	db 1, SWIFT
	db 1, TAIL_WHIP
	db 8, SAND_ATTACK
	db 16, CONFUSION
	db 23, QUICK_ATTACK
	db 26, CONFUSE_RAY
	db 30, BITE
	db 33, PSYBEAM
	db 36, THUNDER_WAVE
	db 39, FUTURE_SIGHT
	db 42, PSYCH_UP
	db 45, LIGHT_SCREEN
	db 47, PSYCHIC_M
	db 52, MORNING_SUN
	db 0 ; no more level-up moves

UmbreonEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SCREECH
	db 8, SAND_ATTACK
	db 16, PURSUIT
	db 23, QUICK_ATTACK
	db 30, CONFUSE_RAY
	db 36, FAINT_ATTACK
	db 42, MEAN_LOOK
	db 47, CRUNCH
	db 52, MOONLIGHT
	db 0 ; no more level-up moves

MurkrowEvosAttacks:
	db 0 ; no more evolutions
	db 1, PECK
	db 7, PURSUIT
	db 10, HAZE
	db 14, ICY_WIND
	db 18, WING_ATTACK
	db 22, CONFUSE_RAY
	db 25, NIGHT_SHADE
	db 28, FAINT_ATTACK
	db 32, STEEL_WING
	db 35, DRILL_PECK
	db 37, MEAN_LOOK
	db 39, PERISH_SONG
	db 43, PSYCHIC_M
	db 46, THUNDER_WAVE
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	db 1, CURSE
	db 1, TACKLE
	db 1, GROWL
	db 1, WATER_GUN
	db 14, RAIN_DANCE
	db 18, CONFUSION
	db 21, FLAMETHROWER
	db 24, DISABLE
	db 27, BUBBLEBEAM
	db 30, PSYBEAM
	db 33, HEADBUTT
	db 36, ICY_WIND
	db 39, SWAGGER
	db 43, BODY_SLAM
	db 50, PSYCHIC_M
	db 54, LIGHT_SCREEN
	db 0 ; no more level-up moves

MisdreavusEvosAttacks:
	db 0 ; no more evolutions
	db 1, GROWL
	db 1, PSYWAVE
	db 6, SPITE
	db 12, CONFUSE_RAY
	db 15, HYPNOSIS
	db 19, MEAN_LOOK
	db 27, PSYBEAM
	db 31, HEAL_BELL
	db 36, PAIN_SPLIT
	db 40, PSYCHIC_M
	db 46, PERISH_SONG
	db 0 ; no more level-up moves

UnownEvosAttacks:
	db 0 ; no more evolutions
	db 1, HIDDEN_POWER
	db 0 ; no more level-up moves

WobbuffetEvosAttacks:
	db 0 ; no more evolutions
	db 1, SAFEGUARD
	db 1, COUNTER
	db 1, MIRROR_COAT
	db 1, DESTINY_BOND
    db 38, BIDE ; New Exclusive Midele Move (Wobbuffet of the Anime)
	db 43, MIMIC
	db 43, ENCORE
	db 0 ; no more level-up moves

GirafarigEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, REFLECT
	db 7, CONFUSION
	db 13, STOMP
	db 20, AGILITY
	db 27, BATON_PASS
	db 32, PSYBEAM
	db 35, BODY_SLAM
	db 39, CRUNCH
	db 42, CONFUSE_RAY
	db 45, PSYCHIC_M
	db 48, MEAN_LOOK
	db 53, DOUBLE_EDGE
	db 56, MIRROR_COAT
	db 59, THUNDER_WAVE
	db 0 ; no more level-up moves

PinecoEvosAttacks:
	db EVOLVE_LEVEL, 31, FORRETRESS
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 8, RAPID_SPIN
	db 13, SUBSTITUTE
	db 15, TAKE_DOWN
	db 22, SELFDESTRUCT
	db 25, PIN_MISSILE
	db 29, BIDE
	db 36, EXPLOSION
	db 43, SPIKES
	db 50, DOUBLE_EDGE
	db 0 ; no more level-up moves

ForretressEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PROTECT
	db 1, RAPID_SPIN
	db 13, SUBSTITUTE
	db 15, TAKE_DOWN
	db 22, SELFDESTRUCT
	db 25, PIN_MISSILE
	db 29, BIDE
	db 33, THUNDER_WAVE
	db 39, EXPLOSION
	db 42, ROCK_SLIDE
	db 49, SPIKES
	db 54, EARTHQUAKE
	db 59, DOUBLE_EDGE
	db 0 ; no more level-up moves

DunsparceEvosAttacks:
	db 0 ; no more evolutions
	db 1, PURSUIT
	db 1, DEFENSE_CURL
	db 5, GLARE
	db 8, SPITE
	db 12, RAGE
	db 16, ANCIENTPOWER
	db 20, SCREECH
	db 23, TAKE_DOWN
	db 26, ROCK_SLIDE
	db 30, AGILITY
	db 33, BODY_SLAM
	db 37, EARTHQUAKE
	db 40, THUNDER_WAVE
	db 43, DOUBLE_EDGE
	db 48, FLAIL
	db 55, HORN_DRILL
	db 0 ; no more level-up moves

GligarEvosAttacks:
	db 0 ; no more evolutions
	db 1, POISON_STING
	db 6, SAND_ATTACK
	db 13, HARDEN
	db 20, QUICK_ATTACK
	db 28, FAINT_ATTACK
	db 30, SPIKES
	db 36, SLASH
	db 38, WING_ATTACK
	db 41, SCREECH
	db 44, ROCK_SLIDE
	db 46, EARTHQUAKE
	db 49, AGILITY
	db 49, SWORDS_DANCE
	db 52, GUILLOTINE
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, SHARPEN
	db 10, BIND
	db 14, ROCK_THROW
	db 18, HARDEN
	db 23, SCREECH
	db 27, RAGE
	db 34, ROCK_SLIDE
	db 36, SANDSTORM
	db 40, SLAM
	db 45, BODY_SLAM
	db 49, CRUNCH
	db 54, EXPLOSION
	db 0 ; no more level-up moves

SnubbullEvosAttacks:
	db EVOLVE_LEVEL, 23, GRANBULL
	db 0 ; no more evolutions
	db 1, BITE
	db 1, TAIL_WHIP
	db 4, SCARY_FACE
	db 8, CHARM
	db 13, TACKLE
	db 16, LICK
	db 19, CURSE
	db 22, LOW_KICK
	db 25, TAKE_DOWN
	db 28, ROAR
	db 34, RAGE
	db 38, BODY_SLAM
	db 0 ; no more level-up moves

GranbullEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, TAIL_WHIP
	db 1, SCARY_FACE
	db 8, CHARM
	db 13, TACKLE
	db 16, LICK
	db 19, CURSE
	db 22, LOW_KICK
	db 28, TAKE_DOWN
	db 30, ROAR
	db 34, ROCK_SLIDE
	db 38, RAGE
	db 41, CROSS_CHOP ; New Exclusive Midele Move
	db 43, BODY_SLAM
	db 46, EARTHQUAKE
	db 50, THUNDER_WAVE
	db 55, HEAL_BELL
	db 59, DOUBLE_EDGE
	db 0 ; no more level-up moves

QwilfishEvosAttacks:
	db 0 ; no more evolutions
if _CRYSTAL
	db 1, SPIKES
endc
	db 1, TACKLE
	db 1, POISON_STING
	db 10, HARDEN
	db 10, MINIMIZE
	db 19, WATER_GUN
	db 21, SWORDS_DANCE
	db 24, SHADOW_BALL
	db 28, PIN_MISSILE
	db 33, SELFDESTRUCT
	db 37, TAKE_DOWN
	db 39, THUNDER_WAVE
	db 42, DESTINY_BOND
	db 46, HYDRO_PUMP
	db 51, PAIN_SPLIT
	db 56, EXPLOSION
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 6, FOCUS_ENERGY
	db 12, PURSUIT
	db 18, FALSE_SWIPE
	db 24, AGILITY
	db 30, STEEL_WING
	db 36, SLASH
	db 42, SWORDS_DANCE
	db 48, DOUBLE_TEAM
	db 0 ; no more level-up moves

ShuckleEvosAttacks:
	db 0 ; no more evolutions
	db 1, CONSTRICT
	db 1, WITHDRAW
	db 9, WRAP
	db 14, ENCORE
	db 18, ANCIENTPOWER
	db 23, SAFEGUARD
	db 25, TOXIC
	db 28, BIDE
	db 30, SANDSTORM
	db 33, ROCK_SLIDE
	db 35, BODY_SLAM
	db 37, REST
	db 40, SUBSTITUTE
	db 44, MIMIC
	db 0 ; no more level-up moves

HeracrossEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 6, HORN_ATTACK
	db 12, ENDURE
	db 19, FURY_ATTACK
	db 23, LOW_KICK
	db 27, COUNTER
	db 30, ROCK_SLIDE
	db 33, PIN_MISSILE
	db 35, TAKE_DOWN
	db 39, SPIKES
	db 44, REVERSAL
	db 47, SWORDS_DANCE
	db 54, MEGAHORN
	db 0 ; no more level-up moves

SneaselEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, SPITE
	db 9, QUICK_ATTACK
	db 17, SCREECH
	db 25, FAINT_ATTACK
	db 28, LOW_KICK
	db 33, FURY_SWIPES
	db 37, IRON_TAIL
	db 39, SWORDS_DANCE
	db 41, AGILITY
	db 49, SLASH
	db 54, REVERSAL
	db 57, BEAT_UP
if _CRYSTAL
	db 65, METAL_CLAW
endc
	db 0 ; no more level-up moves

TeddiursaEvosAttacks:
	db EVOLVE_LEVEL, 30, URSARING
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 6, LICK
	db 9, FURY_SWIPES
	db 11, LOW_KICK
	db 14, FAINT_ATTACK
	db 17, METAL_CLAW
	db 22, REST
	db 25, SLASH
	db 28, SNORE
	db 33, SWORDS_DANCE
	db 40, THRASH
	db 45, CROSS_CHOP
	db 0 ; no more level-up moves

UrsaringEvosAttacks:
	db 0 ; no more evolutions
	db 1, SCRATCH
	db 1, LEER
	db 1, LICK
	db 1, FURY_SWIPES
	db 11, LOW_KICK
	db 14, FAINT_ATTACK
	db 17, METAL_CLAW
	db 22, REST
	db 25, SLASH
	db 28, SNORE
	db 37, SWORDS_DANCE
	db 44, THRASH
	db 48, CROSS_CHOP
	db 0 ; no more level-up moves

SlugmaEvosAttacks:
	db EVOLVE_LEVEL, 38, MAGCARGO
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, ACID_ARMOR
	db 7, EMBER
	db 9, SMOKESCREEN
	db 12, ROCK_THROW
	db 15, CURSE
	db 18, AMNESIA
	db 22, FLAMETHROWER
	db 25, RECOVER
	db 27, SUNNY_DAY
	db 30, ROCK_SLIDE
	db 32, BODY_SLAM
	db 0 ; no more level-up moves

MagcargoEvosAttacks:
	db 0 ; no more evolutions
	db 1, SMOG
	db 1, ACID_ARMOR
	db 1, EMBER
	db 1, ROCK_THROW
	db 9, SMOKESCREEN
	db 15, CURSE
	db 18, AMNESIA
	db 22, FLAMETHROWER
	db 25, RECOVER
	db 27, SUNNY_DAY
	db 29, ROCK_SLIDE
	db 31, BODY_SLAM
	db 39, SOLARBEAM
	db 41, REFLECT
	db 44, LIGHT_SCREEN
	db 0 ; no more level-up moves

SwinubEvosAttacks:
	db EVOLVE_LEVEL, 33, PILOSWINE
	db 0 ; no more evolutions
	db 1, TACKLE
	db 10, POWDER_SNOW
	db 19, ENDURE
	db 24, CURSE
	db 28, TAKE_DOWN
	db 34, MIST
	db 37, EARTHQUAKE
	db 40, BLIZZARD
	db 43, AMNESIA
	db 0 ; no more level-up moves

PiloswineEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, POWDER_SNOW
	db 1, SCARY_FACE
	db 10, POWDER_SNOW
	db 19, ENDURE
	db 24, CURSE
	db 28, TAKE_DOWN
	db 33, FURY_ATTACK
	db 38, ROCK_SLIDE
	db 42, MIST
	db 45, EARTHQUAKE
	db 48, BLIZZARD
	db 52, AMNESIA
	db 55, THRASH
	db 58, LIGHT_SCREEN
	db 61, REFLECT
	db 0 ; no more level-up moves

CorsolaEvosAttacks:
	db 0 ; no more evolutions
	db 1, ANCIENTPOWER
	db 7, HARDEN
	db 13, BUBBLE
	db 19, RECOVER
	db 25, BUBBLEBEAM
	db 31, SPIKE_CANNON
	db 34, TOXIC
	db 37, MIRROR_COAT
	db 40, PSYCHIC_M
	db 43, REFLECT
	db 43, LIGHT_SCREEN
	db 46, ROCK_SLIDE
	db 50, CONFUSE_RAY
	db 54, BARRIER
	db 60, EXPLOSION
	db 0 ; no more level-up moves

RemoraidEvosAttacks:
	db EVOLVE_LEVEL, 25, OCTILLERY
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 11, LOCK_ON
	db 22, PSYBEAM
	db 22, AURORA_BEAM
	db 22, BUBBLEBEAM
	db 27, FOCUS_ENERGY
	db 34, HYPER_BEAM
	db 0 ; no more level-up moves

OctilleryEvosAttacks:
	db 0 ; no more evolutions
	db 1, WATER_GUN
	db 11, CONSTRICT
	db 22, PSYBEAM
	db 22, AURORA_BEAM
	db 22, BUBBLEBEAM
	db 25, OCTAZOOKA
	db 28, THUNDER_WAVE
	db 32, FOCUS_ENERGY
	db 35, PSYCHIC_M
	db 39, ICE_BEAM
	db 42, FLAMETHROWER
	db 46, HYPER_BEAM
	db 0 ; no more level-up moves

DelibirdEvosAttacks:
	db 0 ; no more evolutions
	db 1, PRESENT
	db 25, DRILL_PECK
	db 30, SPIKES
	db 33, COUNTER
	db 35, DESTINY_BOND
	db 40, BODY_SLAM
	db 43, SUBSTITUTE
	db 46, AGILITY
	db 49, REVERSAL
	db 51, SKY_ATTACK
	db 0 ; no more level-up moves

MantineEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, BUBBLE
	db 1, PSYBEAM
	db 10, SUPERSONIC
	db 18, BUBBLEBEAM
	db 25, TAKE_DOWN
	db 32, AGILITY
	db 40, WING_ATTACK
	db 44, HYDRO_PUMP
	db 49, CONFUSE_RAY
	db 0 ; no more level-up moves

SkarmoryEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, PECK
	db 13, SAND_ATTACK
	db 19, SWIFT
	db 25, AGILITY
	db 27, SPIKES
	db 28, DRILL_PECK
	db 37, FURY_ATTACK
	db 45, ROCK_SLIDE
	db 49, STEEL_WING
	db 53, SWORDS_DANCE
	db 0 ; no more level-up moves

HoundourEvosAttacks:
	db EVOLVE_LEVEL, 24, HOUNDOOM
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 7, SMOG
	db 13, BITE
	db 20, ROAR
	db 23, FIRE_SPIN
	db 27, FAINT_ATTACK
	db 30, SUNNY_DAY
	db 35, FLAMETHROWER
	db 39, CRUNCH
	db 0 ; no more level-up moves

HoundoomEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEER
	db 1, EMBER
	db 7, SMOG
	db 13, BITE
	db 20, ROAR
	db 23, FIRE_SPIN
	db 30, FAINT_ATTACK
	db 34, SUNNY_DAY
	db 41, FLAMETHROWER
	db 46, CRUNCH
	db 51, SOLARBEAM
	db 54, FIRE_BLAST
	db 59, DESTINY_BOND
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	db 1, BUBBLE
	db 1, SMOKESCREEN
	db 1, LEER
	db 1, WATER_GUN
	db 29, TWISTER
	db 35, BUBBLEBEAM
	db 40, AGILITY
	db 45, OUTRAGE
	db 51, HYDRO_PUMP
	db 0 ; no more level-up moves

PhanpyEvosAttacks:
	db EVOLVE_LEVEL, 25, DONPHAN
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, GROWL
	db 4, WATER_GUN
	db 7, ABSORB
	db 9, DEFENSE_CURL
	db 12, FLAIL
	db 15, ROLLOUT
	db 20, TAKE_DOWN
	db 24, MAGNITUDE
	db 27, BODY_SLAM
	db 32, ENDURE
	db 37, DOUBLE_EDGE
	db 0 ; no more level-up moves

DonphanEvosAttacks:
	db 0 ; no more evolutions
	db 1, HORN_ATTACK
	db 1, GROWL
	db 6, DEFENSE_CURL
	db 10, FLAIL
	db 15, FURY_ATTACK
	db 20, TAKE_DOWN
	db 24, MAGNITUDE
	db 32, BODY_SLAM
	db 37, RAPID_SPIN
	db 40, ENDURE
	db 43, DOUBLE_EDGE
	db 46, EARTHQUAKE
	db 0 ; no more level-up moves

Porygon2EvosAttacks:
	db 0 ; no more evolutions
	db 1, CONVERSION2
	db 1, TACKLE
	db 1, CONVERSION
	db 9, AGILITY
	db 12, PSYBEAM
	db 20, RECOVER
	db 24, DEFENSE_CURL
	db 32, LOCK_ON
	db 36, TRI_ATTACK
	db 44, ZAP_CANNON
	db 48, BARRIER
	db 54, THUNDER_WAVE
	db 0 ; no more level-up moves

StantlerEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 8, CONFUSE_RAY
	db 10, HYPNOSIS
	db 15, STOMP
	db 19, DOUBLE_KICK
	db 23, THUNDERBOLT
	db 30, JUMP_KICK
	db 34, TAKE_DOWN
	db 40, MEGAHORN
	db 44, BODY_SLAM
	db 51, THRASH
	db 0 ; no more level-up moves

SmeargleEvosAttacks:
	db 0 ; no more evolutions
	db 1, SKETCH
	db 11, SKETCH
	db 21, SKETCH
	db 31, SKETCH
	db 41, SKETCH
	db 51, SKETCH
	db 61, SKETCH
	db 71, SKETCH
	db 81, SKETCH
	db 91, SKETCH
	db 0 ; no more level-up moves

TyrogueEvosAttacks:
	db EVOLVE_STAT, 20, ATK_LT_DEF, HITMONCHAN
	db EVOLVE_STAT, 20, ATK_GT_DEF, HITMONLEE
	db EVOLVE_STAT, 20, ATK_EQ_DEF, HITMONTOP
	db 0 ; no more evolutions
	db 1, TACKLE
	db 0 ; no more level-up moves

HitmontopEvosAttacks:
	db 0 ; no more evolutions
	db 1, ROLLING_KICK
	db 7, FOCUS_ENERGY
	db 13, PURSUIT
	db 19, QUICK_ATTACK
	db 25, RAPID_SPIN
	db 31, COUNTER
	db 34, ROCK_SLIDE
	db 37, AGILITY
	db 42, HI_JUMP_KICK
	db 43, DETECT
	db 49, TRIPLE_KICK
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	db EVOLVE_LEVEL, 30, JYNX
	db 0 ; no more evolutions
	db 1, POUND
	db 1, LICK
	db 9, SWEET_KISS
	db 13, POWDER_SNOW
	db 21, CONFUSION
	db 25, SING
	db 33, MEAN_LOOK
	db 37, PSYCHIC_M
	db 45, PERISH_SONG
	db 49, BLIZZARD
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	db EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
	db 1, QUICK_ATTACK
	db 1, LEER
	db 9, THUNDERPUNCH
	db 17, LIGHT_SCREEN
	db 25, SWIFT
	db 33, SCREECH
	db 41, THUNDERBOLT
	db 49, THUNDER
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	db EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions
	db 1, EMBER
	db 7, LEER
	db 13, SMOG
	db 19, FIRE_PUNCH
	db 25, SMOKESCREEN
	db 31, SUNNY_DAY
	db 37, FLAMETHROWER
	db 43, CONFUSE_RAY
	db 49, FIRE_BLAST
	db 0 ; no more level-up moves

MiltankEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 4, GROWL
	db 8, DEFENSE_CURL
	db 13, ROLLOUT
	db 17, STOMP
	db 21, MILK_DRINK
	db 26, BIDE
	db 34, ROCK_SLIDE
	db 43, BODY_SLAM
	db 53, HEAL_BELL
	db 57, DOUBLE_EDGE
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	db 1, POUND
	db 4, GROWL
	db 7, TAIL_WHIP
	db 10, SOFTBOILED
	db 13, DOUBLESLAP
	db 15, METRONOME
	db 18, MINIMIZE
	db 20, BUBBLEBEAM
	db 23, SING
	db 28, EGG_BOMB
	db 31, SEISMIC_TOSS
	db 33, DEFENSE_CURL
	db 40, LIGHT_SCREEN
	db 47, DOUBLE_EDGE
	db 0 ; no more level-up moves

RaikouEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 11, THUNDERSHOCK
	db 21, QUICK_ATTACK
	db 31, SPARK
	db 41, REFLECT
	db 51, ROAR
	db 61, CRUNCH
	db 71, THUNDER
	db 76, EXTREMESPEED
	db 0 ; no more level-up moves

EnteiEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
	db 11, EMBER
	db 21, FIRE_SPIN
	db 31, STOMP
	db 41, FLAMETHROWER
	db 51, ROAR
	db 61, SWAGGER
	db 71, SACRED_FIRE
	db 76, EXTREMESPEED
	db 0 ; no more level-up moves

SuicuneEvosAttacks:
	db 0 ; no more evolutions
	db 1, BITE
	db 1, LEER
if _CRYSTAL
	db 11, BUBBLEBEAM
	db 21, RAIN_DANCE
	db 31, GUST
	db 41, AURORA_BEAM
else
	db 11, WATER_GUN
	db 21, ROAR
	db 31, GUST
	db 41, BUBBLEBEAM
endc
	db 51, MIST
	db 61, MIRROR_COAT
	db 71, HYDRO_PUMP
	db 76, EXTREMESPEED
	db 0 ; no more level-up moves

LarvitarEvosAttacks:
	db EVOLVE_LEVEL, 20, PUPITAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 7, PURSUIT
	db 9, SANDSTORM
	db 12, BITE
	db 15, ROCK_THROW
	db 21, STOMP
	db 24, DIG
	db 28, SCARY_FACE
	db 32, ROCK_SLIDE
	db 36, CRUNCH
	db 40, THRASH
	db 45, HYPER_BEAM
	db 49, SCREECH
	db 56, EARTHQUAKE
	db 0 ; no more level-up moves

PupitarEvosAttacks:
	db EVOLVE_LEVEL, 40, TYRANITAR
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, LEER
	db 1, PURSUIT
	db 1, SANDSTORM
	db 9, SANDSTORM
	db 12, BITE
	db 15, ROCK_THROW
	db 23, STOMP
	db 27, DIG
	db 31, SCARY_FACE
	db 35, ROCK_SLIDE
	db 39, CRUNCH
	db 45, THRASH
	db 53, HYPER_BEAM
	db 56, SCREECH
	db 59, EARTHQUAKE
	db 0 ; no more level-up moves

TyranitarEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, PURSUIT
	db 1, LEER
	db 1, SANDSTORM
	db 12, BITE
	db 15, ROCK_THROW
	db 23, STOMP
	db 27, DIG
	db 31, SCARY_FACE
	db 35, ROCK_SLIDE
	db 39, CRUNCH
	db 47, THRASH
	db 56, HYPER_BEAM
	db 59, SCREECH
	db 63, MEGA_KICK
	db 75, EARTHQUAKE
	db 0 ; no more level-up moves

LugiaEvosAttacks:
    db 0 ; no more evolutions
    db 1, AEROBLAST
    db 11, SAFEGUARD
    db 22, GUST
    db 33, RECOVER
    db 44, HYDRO_PUMP
    db 55, RAIN_DANCE
    db 66, SWIFT
    db 77, WHIRLWIND
    db 88, ANCIENTPOWER
    db 99, FUTURE_SIGHT
    db 100, ICE_BEAM
    db 100, AEROBLAST
    db 100, RECOVER
    db 100, PSYCHIC_M
	db 0 ; no more level-up moves

HoOhEvosAttacks:
	db 0 ; no more evolutions
	db 1, SACRED_FIRE
	db 11, SAFEGUARD
	db 22, GUST
	db 33, RECOVER
	db 44, FIRE_BLAST
	db 55, SUNNY_DAY
	db 66, SWIFT
	db 77, WHIRLWIND
	db 88, ANCIENTPOWER
	db 99, FUTURE_SIGHT
	db 100, EARTHQUAKE
	db 100, SACRED_FIRE
	db 100, RECOVER
	db 100, GIGA_DRAIN
	db 0 ; no more level-up moves

CelebiEvosAttacks:
	db 0 ; no more evolutions
	db 1, LEECH_SEED
	db 1, CONFUSION
	db 1, RECOVER
	db 1, HEAL_BELL
	db 10, SAFEGUARD
	db 20, ANCIENTPOWER
	db 30, FUTURE_SIGHT
	db 40, BATON_PASS
	db 50, PERISH_SONG
	db 0 ; no more level-up moves

MicomonEvosAttacks:
	db 0 ; no more evolutions
	db 1, LICK
	db 4, SCREECH
	db 7, BIDE
	db 13, CONFUSE_RAY
	db 18, BITE
	db 21, HYPNOSIS
	db 24, NIGHT_SHADE
	db 27, CURSE
	db 30, SWORDS_DANCE
	db 33, FAINT_ATTACK
	db 35, GLARE
	db 38, SHADOW_BALL
	db 41, LEECH_LIFE
	db 44, DESTINY_BOND
	db 47, FUTURE_SIGHT
	db 50, PAIN_SPLIT
	db 53, MEAN_LOOK
	db 58, OUTRAGE
	db 61, SPIKES
	db 0

BombseekerEvosAttacks:
	db 0 ; no more evolutions
	db 1, TACKLE
	db 1, TAIL_WHIP
	db 5, WATER_GUN
	db 5, EMBER
	db 8, BARRAGE
	db 12, SMOG
	db 15, FIRE_SPIN
	db 19, FLAME_WHEEL
	db 19, BUBBLEBEAM
	db 26, TAKE_DOWN
	db 31, AURORA_BEAM
	db 38, SKULL_BASH
	db 43, RECOVER
	db 46, MIRROR_COAT
	db 54, FIRE_BLAST
	db 54, HYDRO_PUMP
	db 0
	
