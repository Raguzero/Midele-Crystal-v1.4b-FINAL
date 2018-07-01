  const_def
  const PASSWORD_MIDELE
  const PASSWORD_FURRY

PromptPassword:
  ld b, $05
  ld hl, _NamingScreen
  ld de, wStringBuffer1
  ld a, BANK(NamingScreen)
  rst FarCall

  ld de, wStringBuffer1
  ld hl, .Passwords
  ld a, [wScriptVar]
  ld b, 0
  ld c, a
  add hl, bc
.password_check_loop
  ld a, [de]
  ld b, [hl]
  cp b
  jr nz, .not_equal
  cp "@"
  jr .all_equal
  inc de
  inc hl
  jr .password_check_loop
.not_equal
  and a
  ret
.all_equal
  scf
  ret

.Passwords:
  db "MIDELE@"
  db "FURRY@"
