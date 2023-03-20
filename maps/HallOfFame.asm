	const_def 2 ; object constants
	const HALLOFFAME_LANCE

HallOfFame_MapScripts:
	db 2 ; scene scripts
	scene_script .EnterHallOfFame ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	db 0 ; callbacks

.EnterHallOfFame:
	priorityjump .EnterHallOfFameScript
	end

.DummyScene:
	end

.EnterHallOfFameScript:
	follow HALLOFFAME_LANCE, PLAYER
	applymovement HALLOFFAME_LANCE, HallOfFame_WalkUpWithLance
	stopfollow
	turnobject PLAYER, RIGHT
	opentext
	writetext HallOfFame_LanceText
	waitbutton
	closetext
	turnobject HALLOFFAME_LANCE, UP
	applymovement PLAYER, HallOfFame_SlowlyApproachMachine
	setscene SCENE_FINISHED
	pause 15
	writebyte HEALMACHINE_HALL_OF_FAME
	special HealMachineAnim
	setevent EVENT_BEAT_ELITE_FOUR
	setevent EVENT_TELEPORT_GUY
	setevent EVENT_RIVAL_SPROUT_TOWER
	setevent EVENT_BROCK_REMATCH
	setevent EVENT_MISTY_REMATCH
	setevent EVENT_LTSURGE_REMATCH
	setevent EVENT_ERIKA_REMATCH
	setevent EVENT_SABRINA_REMATCH
	setevent EVENT_JANINE_REMATCH
	setevent EVENT_BLAINE_REMATCH
	setevent EVENT_BLUE_REMATCH
	setevent EVENT_FALKNER_REMATCH
	setevent EVENT_BUGSY_REMATCH
	setevent EVENT_WHITNEY_REMATCH
	setevent EVENT_MORTY_REMATCH
	setevent EVENT_JASMINE_REMATCH
	setevent EVENT_CHUCK_REMATCH
	setevent EVENT_PRYCE_REMATCH
	setevent EVENT_CLAIR_REMATCH
	clearevent EVENT_BEAT_RAGU
	clearevent EVENT_BEAT_GOLDY
	clearevent EVENT_BEAT_SPOLKER
	clearevent EVENT_BEAT_MERUM
	clearevent EVENT_BEAT_TRAINER ; GADDAR
	clearevent EVENT_BEAT_TRAINER2 ; UTALAWA
	clearevent EVENT_BEAT_TRAINER7  ;DARKI
	clearevent EVENT_BEAT_TRAINER8 ;ENTROPIA
	clearevent EVENT_BEAT_TRAINER9 ; SAPPHIRE
	clearevent EVENT_BEAT_SHELEA
	clearevent EVENT_BEAT_EXI
	clearevent EVENT_12 ; DENYS
	clearevent EVENT_13 ; KAISSER
	clearevent EVENT_14 ; JZOMBIE
	setevent EVENT_15 ; MICOLO
	clearevent EVENT_16 ; GEMELAS LAV Y RAZ
	clearevent EVENT_BEAT_TRAINER5 ; POKEANTHONY
	clearevent EVENT_BEAT_TRAINER6 ; FELIPEX
	clearevent EVENT_BEAT_TRAINER3 ; PROGAMER
	clearevent EVENT_BEAT_TRAINER4 ; VLADILAND
	clearevent EVENT_106 ; TOPO
	clearevent EVENT_107 ; AVADER BATALLA FINAL
	clearevent EVENT_108 ; LAVENDER BATALLA FINAL
	clearevent EVENT_109 ; PHENT	
	clearevent EVENT_10A ; PACOBEER BATALLA FINAL
	clearevent EVENT_10B ; SANTYAGO BATALLA FINAL
	clearevent EVENT_10F ; ZZZ BATALLA FINAL
	clearevent EVENT_110 ; MICOLO BATALLA FINAL
	clearevent EVENT_10E ; FURRY BATALLA FINAL
	clearevent EVENT_RED_IN_MT_SILVER
	setevent EVENT_OLIVINE_PORT_SPRITES_BEFORE_HALL_OF_FAME
	clearevent EVENT_OLIVINE_PORT_SPRITES_AFTER_HALL_OF_FAME
	special RespawnOneOffs ; NUEVO PARA RESPAWN POKEMON
	setmapscene SPROUT_TOWER_3F, SCENE_FINISHED
	special HealParty
	checkevent EVENT_GOT_SS_TICKET_FROM_ELM
	iftrue .SkipPhoneCall
	specialphonecall SPECIALCALL_SSTICKET
.SkipPhoneCall:
	halloffame
	end

HallOfFame_WalkUpWithLance:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step RIGHT
	turn_head LEFT
	step_end

HallOfFame_SlowlyApproachMachine:
	slow_step UP
	step_end

HallOfFame_LanceText:
	text "LANCE: It's been a"
	line "long time since I"
	cont "last came here."

	para "This is where we"
	line "honor the LEAGUE"

	para "CHAMPIONS for all"
	line "eternity."

	para "Their courageous"
	line "#MON are also"
	cont "inducted."

	para "Here today, we"
	line "witnessed the rise"

	para "of a new LEAGUE"
	line "CHAMPION--a"

	para "trainer who feels"
	line "compassion for,"

	para "and trust toward,"
	line "all #MON."

	para "A trainer who"
	line "succeeded through"

	para "perseverance and"
	line "determination."

	para "The new LEAGUE"
	line "CHAMPION who has"

	para "all the makings"
	line "of greatness!"

	para "<PLAY_G>, allow me"
	line "to register you"

	para "and your partners"
	line "as CHAMPIONS!"
	done

HallOfFame_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 13, LANCES_ROOM, 3
	warp_event  5, 13, LANCES_ROOM, 4

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  4, 12, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
