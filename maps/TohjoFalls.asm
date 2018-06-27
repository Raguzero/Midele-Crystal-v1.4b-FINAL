	const_def 2 ; object constants
	const TOHJOFALLS_POKE_BALL
	const TOHJOFALLS_ULTRAMAGIC

TohjoFalls_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks	
	callback MAPCALLBACK_OBJECTS, .Setmagico

.Setmagico:
	checkevent EVENT_BEAT_LAVENDER
	iffalse .Appearmagico
	jump .Disappearmagico
	
.Appearmagico
	appear TOHJOFALLS_ULTRAMAGIC
	return
	
.Disappearmagico
	disappear TOHJOFALLS_ULTRAMAGIC
	return
	
TohjoFallsMoonStone:
	itemball MOON_STONE

TrainerSageUltramagic:
	trainer SAGE, ULTRAMAGIC, EVENT_BEAT_ULTRAMAGIC, SageUltraMagicSeenText, SageUltraMagicBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageUltraMagicAfterBattleText
	waitbutton
	closetext
	end	

SageUltraMagicSeenText:
    text "DOOD!"
    line "Do you know a man"
    para "called LAVNDER?"

    para "JOHTO police is"
    line "after him and"
    cont "he is hiding"
    para "somewhere."

    para "The police is also"
    line "after me, but I"
    cont "don't care, DOOD!"
    cont "The mafia is "
    para "watching over me."

    para "Anyway, now you"
    line "know my secret, so"
    cont "I'll have to"
    cont "kill you, DOOD."
    done

SageUltraMagicBeatenText:
    text "You are all"
    line "DOOD!"
    done

SageUltraMagicAfterBattleText:
    text "DOOD, I was just"
    line "kidding."
    cont "I'm a normal"
    para "person."

    para "LAVENDR? What is"
    line "that?"
    cont "I don't know NACHO."
    done	

TohjoFalls_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 13, 15, ROUTE_27, 2
	warp_event 25, 15, ROUTE_27, 3

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  2,  6, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, TohjoFallsMoonStone, EVENT_TOHJO_FALLS_MOON_STONE
	object_event  11,  15, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerSageUltramagic,  EVENT_ULTRAMAGIC_DESAPARECER
