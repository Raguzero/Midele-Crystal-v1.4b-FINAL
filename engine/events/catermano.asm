AVADER_OT_ID EQU 00666

CATERMANO_HP      EQU  293
CATERMANO_ATK     EQU 158
CATERMANO_DEF     EQU 168
CATERMANO_SPC_ATK EQU 138
CATERMANO_SPC_DEF EQU 138
CATERMANO_SPD     EQU 188

GiveCatermano:

; Adding to the party.
	xor a
	ld [wMonType], a

; Level 100 Caterpie.
	ld a, CATERPIE
	ld [wCurPartySpecies], a
	ld a, 100
	ld [wCurPartyLevel], a

	predef TryAddMonToParty
	jp nc, .NotGiven

; Caught data.
	ld b, 0
	farcall SetGiftPartyMonCaughtData

; Holding a Master Ball.
	ld bc, PARTYMON_STRUCT_LENGTH
	ld a, [wPartyCount]
	dec a
	push af
	push bc
	ld hl, wPartyMon1Item
	call AddNTimes
	ld [hl], MASTER_BALL
	pop bc
	pop af

; OT ID.
	ld hl, wPartyMon1ID
	call AddNTimes
	ld a, HIGH(AVADER_OT_ID)
	ld [hli], a
	ld [hl], LOW(AVADER_OT_ID)

; Nickname.
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMonNicknames
	call SkipNames
	ld de, SpecialCatermanoNick
	call CopyName2

; OT.
	ld a, [wPartyCount]
	dec a
	ld hl, wPartyMonOT
	call SkipNames
	ld de, SpecialCatermanoOT
	call CopyName2

	ld bc, PARTYMON_STRUCT_LENGTH

; DVs.
  ld a, [wPartyCount]
  dec a
  ld hl, wPartyMon1DVs
  call AddNTimes
  ld a, $FF
  ld [hli], a
  ld [hl], a

; Stat experience.
  ld a, [wPartyCount]
  dec a
  ld hl, wPartyMon1HPExp
  call AddNTimes
  ld a, $FF
  ; HP exp
  ld [hli], a
  ld [hli], a
  ; Attack exp
  ld [hli], a
  ld [hli], a
  ; Defense exp
  ld [hli], a
  ld [hli], a
  ; Special exp
  ld [hli], a
  ld [hli], a
  ; Speed exp
  ld [hli], a
  ld [hl], a

  ; Hardcoding the stats
  ld a, [wPartyCount]
  dec a
  ld hl, wPartyMon1HP
  call AddNTimes
  ; HP
  ld a, HIGH(CATERMANO_HP)
  ld [hli], a
  ld a, LOW(CATERMANO_HP)
  ld [hli], a
  ; Max HP
  ld a, HIGH(CATERMANO_HP)
  ld [hli], a
  ld a, LOW(CATERMANO_HP)
  ld [hli], a
  ; Attack
  ld a, HIGH(CATERMANO_ATK)
  ld [hli], a
  ld a, LOW(CATERMANO_ATK)
  ld [hli], a
  ; Defense
  ld a, HIGH(CATERMANO_DEF)
  ld [hli], a
  ld a, LOW(CATERMANO_DEF)
  ld [hli], a
  ; Speed
  ld a, HIGH(CATERMANO_SPD)
  ld [hli], a
  ld a, LOW(CATERMANO_SPD)
  ld [hli], a
  ; Spcl Attack
  ld a, HIGH(CATERMANO_SPC_ATK)
  ld [hli], a
  ld a, LOW(CATERMANO_SPC_ATK)
  ld [hli], a
  ; Spcl Defense
  ld a, HIGH(CATERMANO_SPC_DEF)
  ld [hli], a
  ld a, LOW(CATERMANO_SPC_DEF)
  ld [hl], a

  ; Moves
  ld a, [wPartyCount]
  dec a
  ld hl, wPartyMon1Moves
  call AddNTimes
  ; Third move
  inc hl
  inc hl
  ld [hl], MIDELE_POWER

  ; PPs
  ld a, [wPartyCount]
  dec a
  ld hl, wPartyMon1PP
  call AddNTimes
  ; Third move
  inc hl
  inc hl
  ld [hl], $0A

; Successful command return
	ld a, 1
	ld [wScriptVar], a
	ret

.NotGiven:
	xor a
	ld [wScriptVar], a
	ret

SpecialCatermanoOT:
	db "AVADER@"
SpecialCatermanoNick:
	db "CATERMANO@"
