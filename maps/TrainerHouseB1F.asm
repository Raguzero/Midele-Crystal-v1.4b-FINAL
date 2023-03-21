	const_def 2 ; object constants
	const TRAINERHOUSEB1F_RECEPTIONIST
	const TRAINERHOUSEB1F_CHRIS

TrainerHouseB1F_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene ; SCENE_DEFAULT

	db 0 ; callbacks

.DummyScene:
	end

TrainerHouseReceptionistScript:
	turnobject PLAYER, UP
	opentext
	;checkflag ENGINE_FOUGHT_IN_TRAINER_HALL_TODAY
	;iftrue .FoughtTooManyTimes
	writetext TrainerHouseB1FIntroText
	buttonsound
	; NUEVO CAL4
	checkcode VAR_BADGES
	if_equal 16, .GetCal4Name
	; NUEVO CAL4
	special TrainerHouse
	iffalse .GetCal3Name
	trainertotext CAL, CAL2, MEM_BUFFER_0
	jump .GotName

.GetCal3Name:
	trainertotext CAL, CAL3, MEM_BUFFER_0
	; NUEVO CAL4
.GetCal4Name:
	checkevent EVENT_114 ; AL CONSEGUIR PKHEX EN MICOLO HIDEOUT
	iftrue .RandomBattleMidele
	trainertotext CAL, CAL4, MEM_BUFFER_0
    ; NUEVO CAL4
.GotName:
	writetext TrainerHouseB1FYourOpponentIsText
	buttonsound
	writetext TrainerHouseB1FAskWantToBattleText
	yesorno
	iffalse .Declined
	;setflag ENGINE_FOUGHT_IN_TRAINER_HALL_TODAY
	writetext TrainerHouseB1FGoRightInText
	waitbutton
	closetext
	applymovement PLAYER, Movement_EnterTrainerHouseBattleRoom
	opentext
	writetext TrainerHouseB1FCalBeforeText
	waitbutton
	closetext
	; NUEVO CAL4
	checkcode VAR_BADGES
	if_equal 16, .BlisseyBattle
	; NUEVO CAL4
	special TrainerHouse
	iffalse .NoSpecialBattle
	winlosstext TrainerHouseB1FCalBeatenText, 0
	setlasttalked TRAINERHOUSEB1F_CHRIS
	loadtrainer CAL, CAL2
	startbattle
	reloadmapafterbattle
	iffalse .End
.NoSpecialBattle:
	winlosstext TrainerHouseB1FCalBeatenText, 0
	setlasttalked TRAINERHOUSEB1F_CHRIS
	loadtrainer CAL, CAL3
	startbattle
	reloadmapafterbattle
	; NUEVO CAL4
	jump .End
.BlisseyBattle:
	winlosstext TrainerHouseB1FCalBeatenText, 0
	setlasttalked TRAINERHOUSEB1F_CHRIS
	loadtrainer CAL, CAL4
	startbattle
	reloadmapafterbattle
    jump .End
	; NUEVO CAL4
	; RANDOM TRAINERS
.RandomBattleMidele:
	writetext TrainerHouseB1FNewMode
	loadmenu .BlackboardMenuHeader
	_2dmenu
	closewindow
	ifequal 1, .Normal
	ifequal 2, .Midele
	ifequal 3, .Declined
	opentext
	jump .Declined
	end

.Normal:
	closetext
	applymovement PLAYER, Movement_EnterTrainerHouseBattleRoom
	jump .BlisseyBattle

.Midele:
	closetext
	applymovement PLAYER, Movement_EnterTrainerHouseBattleRoom
	winlosstext TrainerHouseB1FCalBeatenText, 0
	setlasttalked TRAINERHOUSEB1F_CHRIS
	random 30
	ifequal 0, .PROGAMER
	ifequal 1, .KAISSER
	ifequal 2, .PHENT
	ifequal 3, .Zzz4
	ifequal 4, .RAGU
	ifequal 5, .SHELEA
	ifequal 6, .GRIM
	ifequal 7, .DENYS
	ifequal 8, .AVADER
	ifequal 9, .ENTROPIA
	ifequal 10, .LAVNDER
	ifequal 11, .LAVNDER2
	ifequal 12, .JZOMBIE
	ifequal 13, .GHADDAR
	ifequal 14, .PACOBEER2
	ifequal 15, .GOLDY
	ifequal 16, .FELIPEX
	ifequal 17, .DARKI
	ifequal 18, .UTALAWEA
	ifequal 19, .MERUM
	ifequal 20, .HYPEANTO
	ifequal 21, .SANTYAGO2
	ifequal 22, .SPOLKER
	ifequal 23, .EXI
	ifequal 24, .VLADILAND
	ifequal 25, .ULTRAMAGIC
	ifequal 26, .RAZANDLAV1
	ifequal 27, .TOPO
	ifequal 28, .MICOLO2
	ifequal 29, .SAPPH
	end
.PROGAMER:
	loadtrainer SCIENTIST, PROGAMER
	jump .startBattle
.KAISSER:
	loadtrainer FISHER, KAISSER
	jump .startBattle
.PHENT:
	loadtrainer SCIENTIST, PHENT
	jump .startBattle
.Zzz4:
	loadtrainer SCHOOLBOY, Zzz4
	jump .startBattle
.RAGU:
	loadtrainer COOLTRAINERM, RAGU
	jump .startBattle
.SHELEA:
	loadtrainer COOLTRAINERM, SHELEA
	jump .startBattle
.GRIM:
	loadtrainer COOLTRAINERM, GRIM
	jump .startBattle
.DENYS:
	loadtrainer COOLTRAINERM, DENYS
	jump .startBattle
.AVADER:
	loadtrainer SCIENTIST, AVADER
	jump .startBattle
.ENTROPIA:
	loadtrainer BEAUTY, ENTROPIA
	jump .startBattle
.LAVNDER
	loadtrainer POKEMANIAC, LAVNDER
	jump .startBattle
.LAVNDER2
	loadtrainer POKEMANIAC, LAVNDER2
	jump .startBattle
.JZOMBIE:
	loadtrainer POKEMANIAC, JZOMBIE
	jump .startBattle
.GHADDAR:
	loadtrainer GRUNTM, GHADDAR
	jump .startBattle
.PACOBEER2:
	loadtrainer SWIMMERM, PACOBEER2
	jump .startBattle
.GOLDY:
	loadtrainer SUPER_NERD, GOLDY
	jump .startBattle
.FELIPEX:
	loadtrainer SUPER_NERD, FELIPEX
	jump .startBattle
.DARKI:
	loadtrainer SUPER_NERD, DARKI
	jump .startBattle
.UTALAWEA:
	loadtrainer JUGGLER, UTALAWEA
	jump .startBattle
.MERUM:
	loadtrainer JUGGLER, MERUM
	jump .startBattle
.HYPEANTO:
	loadtrainer PSYCHIC_T, HYPEANTO
	jump .startBattle
.SANTYAGO2:
	loadtrainer PSYCHIC_T, SANTYAGO2
	jump .startBattle
.SPOLKER:
	loadtrainer CAMPER, SPOLKER
	jump .startBattle
.EXI:
	loadtrainer CAMPER, EXI
	jump .startBattle
.VLADILAND:
	loadtrainer SAGE, VLADILAND
	jump .startBattle
.ULTRAMAGIC:
	loadtrainer SAGE, ULTRAMAGIC
	jump .startBattle
.RAZANDLAV1:
	loadtrainer TWINS, RAZANDLAV1
	jump .startBattle
.TOPO:
	loadtrainer OFFICER, TOPO
	jump .startBattle
.MICOLO2:
	loadtrainer POKEMANIAC, MICOLO2
	jump .startBattle
.SAPPH:
	loadtrainer COOLTRAINERF, SAPPH
.startBattle:
    startbattle
    reloadmapafterbattle
    jump .End
	; RANDOM TRAINERS

.BlackboardMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 16, 8
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	dn 3, 1 ; rows, columns
	db 3 ; spacing
	dba .Text
	dbw BANK(AcademyBlackboard), 0

.Text:
	db "NORMAL MODE@"
	db "MIDELE MODE@"
	db "QUIT@"

.End:
	applymovement PLAYER, Movement_ExitTrainerHouseBattleRoom
	end

.Declined:
	writetext TrainerHouseB1FPleaseComeAgainText
	waitbutton
	closetext
	applymovement PLAYER, Movement_TrainerHouseTurnBack
	end

;.FoughtTooManyTimes:
	;writetext TrainerHouseB1FSecondChallengeDeniedText
	;waitbutton
	;closetext
	;applymovement PLAYER, Movement_TrainerHouseTurnBack
	;end

Movement_EnterTrainerHouseBattleRoom:
	step LEFT
	step LEFT
	step LEFT
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step LEFT
	turn_head RIGHT
	step_end

Movement_ExitTrainerHouseBattleRoom:
	step UP
	step UP
	step UP
	step RIGHT
	step UP
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step_end

Movement_TrainerHouseTurnBack:
	step RIGHT
	turn_head LEFT
	step_end

TrainerHouseB1FIntroText:
	text "Hi. Welcome to our"
	line "TRAINING HALL."

	para "You may battle a"
	line "trainer whenever"
	cont "you want."
	done

TrainerHouseB1FYourOpponentIsText:
	text_from_ram wStringBuffer3
	text " is your"
	line "opponent."
	done

TrainerHouseB1FAskWantToBattleText:
	text "Would you like to"
	line "battle?"
	done

TrainerHouseB1FGoRightInText:
	text "Please go right"
	line "through."

	para "You may begin"
	line "right away."
	done

TrainerHouseB1FPleaseComeAgainText:
	text "Sorry. Only those"
	line "trainers who will"

	para "be battling are"
	line "allowed to go in."
	done

;TrainerHouseB1FSecondChallengeDeniedText:
	;text "I'm sorry."
	;line "This would be your"

	;para "second time today."
	;line "You're permitted"

	;para "to enter just once"
	;line "a day."
	;done

TrainerHouseB1FCalBeatenText:
	text "I lost…"
	line "Darn…"
	done

TrainerHouseB1FCalBeforeText:
	text "I traveled out"
	line "here just so I"
	cont "could battle you."
	done
	
TrainerHouseB1FNewMode:
	text "Now you can choose"
	line "two modes." 
	
	para "NORMAL MODE is the"
	line "same as always,"
	cont "while MIDELE MODE" 
	cont "allows you to" 
	cont "fight against a"
	cont "unique Midele" 
	cont "Trainer at lv100."
	
	para "Choose a mode."
	done

TrainerHouseB1F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  9,  4, TRAINER_HOUSE_1F, 3

	db 1 ; coord events
	coord_event  7,  3, SCENE_DEFAULT, TrainerHouseReceptionistScript

	db 0 ; bg events

	db 2 ; object events
	object_event  7,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  6, 11, SPRITE_CHRIS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
