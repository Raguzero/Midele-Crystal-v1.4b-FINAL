MoveTutor: ; 4925b
	call FadeToMenu
	call ClearBGPalettes
	call ClearScreen
	call DelayFrame
	ld b, SCGB_PACKPALS
	call GetSGBLayout
	xor a
	ld [wItemAttributeParamBuffer], a
	call .GetMoveTutorMove
	ld [wd265], a
	ld [wPutativeTMHMMove], a
	call GetMoveName
	call CopyName1
	farcall ChooseMonToLearnTMHM
	jr c, .cancel
	jr .enter_loop

.loop
	farcall ChooseMonToLearnTMHM_NoRefresh
	jr c, .cancel
.enter_loop
	call CheckCanLearnMoveTutorMove
	jr nc, .loop
	xor a ; FALSE
	ld [wScriptVar], a
	jr .quit

.cancel
	ld a, -1
	ld [wScriptVar], a
.quit
	call CloseSubmenu
	ret

.GetMoveTutorMove: ; 492a5
    ld a, [wScriptVar]
	cp MOVETUTOR_MOVE_FLAMETHROWER
	jr z, .flamethrower
	cp MOVETUTOR_MOVE_THUNDERBOLT
	jr z, .thunderbolt
	cp MOVETUTOR_MOVE_SOFTBOILED
	jr z, .softboiled
	cp MOVETUTOR_MOVE_LOVELY_KISS
	jr z, .lovelykiss
	cp MOVETUTOR_MOVE_MOONLIGHT
	jr z, .moonlight
	cp MOVETUTOR_MOVE_MORNING_SUN
	jr z, .morningsun
	cp MOVETUTOR_MOVE_ICE_BEAM
	jr z, .icebeam
	ret

.flamethrower
	ld a, FLAMETHROWER
	ret

.thunderbolt
	ld a, THUNDERBOLT
	ret

.icebeam
	ld a, ICE_BEAM
	ret

.softboiled
	ld a, SOFTBOILED
	ret	

.lovelykiss
	ld a, LOVELY_KISS
	ret

.moonlight
	ld a, MOONLIGHT
	ret

.morningsun
	ld a, MORNING_SUN
	ret

CheckCanLearnMoveTutorMove: ; 492b9
	ld hl, .MenuHeader
	call LoadMenuHeader

	predef CanLearnTMHMMove

	push bc
	ld a, [wCurPartyMon]
	ld hl, wPartyMonNicknames
	call GetNick
	pop bc

	ld a, c
	and a
	jr nz, .can_learn
	push de
	ld de, SFX_WRONG
	call PlaySFX
	pop de
	ld a, BANK(Text_TMHMNotCompatible)
	ld hl, Text_TMHMNotCompatible
	call FarPrintText
	jr .didnt_learn

.can_learn
	callfar KnowsMove
	jr c, .didnt_learn

	predef LearnMove
	ld a, b
	and a
	jr z, .didnt_learn

	ld c, HAPPINESS_LEARNMOVE
	callfar ChangeHappiness
	jr .learned

.didnt_learn
	call ExitMenu
	and a
	ret

.learned
	call ExitMenu
	scf
	ret

.MenuHeader: ; 0x4930a
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 12, SCREEN_WIDTH - 1, SCREEN_HEIGHT - 1
