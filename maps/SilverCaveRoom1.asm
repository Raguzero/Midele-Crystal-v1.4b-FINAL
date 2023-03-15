	const_def 2 ; object constants
	const SILVERCAVEROOM1_POKE_BALL1
	const SILVERCAVEROOM1_POKE_BALL2
	const SILVERCAVEROOM1_POKE_BALL3
	const SILVERCAVEROOM1_POKE_BALL4
	const SILVERCAVEROOM1_AVADER

SilverCaveRoom1_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .SetAvader2

.SetAvader2:
	checkevent EVENT_18
	iftrue .AppearAvader2
	jump .DisappearAvader2
.AppearAvader2
	appear SILVERCAVEROOM1_AVADER
	return
.DisappearAvader2
	disappear SILVERCAVEROOM1_AVADER
	return

TrainerAvader2:
	trainer SCIENTIST, AVADER, EVENT_19, AvaderSeenText2, AvaderBeatenText2, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext AvaderAfterBattleText2
	waitbutton
	closetext
	end

AvaderSeenText2:
    text "Ha ha ha!"
	line "I am"
	para "omnipresent."
    
	para "Hello again"
	line "<PLAYER>!"
	
	para "As you will"
	line "surely remember"

    para "I am the"
	line "mastermind"
    cont "behind the"
	cont "TEAM ROCKET"
	para "crimes."

    para "How so?"
    line "Well, defeat me"
    cont "and I'll tell you"
	cont "again."
    done

AvaderBeatenText2:
    text "You're good, boy."
    line "Truly a descendant"
	cont "of King Micolo."
    done

AvaderAfterBattleText2:
    text "I manipulated"
	line "Giovanni into"
	cont "creating"
	para "Team Rocket."

    para "With the money"
	line "from their crimes,"
    cont "I could conduct my" 
	para "experiments."

    para "I wanted to create"
	line "the ultimate"
	cont "lifeform"
    para "THE MICOLOL"

    para "But most"
	line "experiments"
	cont "ended in failure"
    cont "These Mews are"
	cont "lacking"
	para "in Midele power."

    para "One of our"
	line "creations"
	cont "was more powerful"
	para "than the rest."

    para "We called him"
	line "Micolo."
    cont "He's now in the"
	cont "DAY-CARE." 
	cont "Maybe you'll be"
	cont "able to"
	cont "capture him."
    done

SilverCaveRoom1MaxElixer:
	itemball MAX_ELIXER

SilverCaveRoom1Protein:
	itemball PROTEIN

SilverCaveRoom1EscapeRope:
	itemball ESCAPE_ROPE

SilverCaveRoom1UltraBall:
	itemball ULTRA_BALL

SilverCaveRoom1HiddenDireHit:
	hiddenitem DIRE_HIT, EVENT_SILVER_CAVE_ROOM_1_HIDDEN_DIRE_HIT

SilverCaveRoom1HiddenUltraBall:
	hiddenitem ULTRA_BALL, EVENT_SILVER_CAVE_ROOM_1_HIDDEN_ULTRA_BALL

SilverCaveRoom1_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  9, 33, SILVER_CAVE_OUTSIDE, 2
	warp_event 15,  1, SILVER_CAVE_ROOM_2, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 16, 23, BGEVENT_ITEM, SilverCaveRoom1HiddenDireHit
	bg_event 17, 12, BGEVENT_ITEM, SilverCaveRoom1HiddenUltraBall

	db 5 ; object events
	object_event  4,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom1MaxElixer, EVENT_SILVER_CAVE_ROOM_1_MAX_ELIXER
	object_event 15, 29, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom1Protein, EVENT_SILVER_CAVE_ROOM_1_PROTEIN
	object_event  5, 30, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom1EscapeRope, EVENT_SILVER_CAVE_ROOM_1_ESCAPE_ROPE
	object_event  7, 18, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveRoom1UltraBall, EVENT_SILVER_CAVE_ROOM_1_ULTRA_BALL
	object_event  7, 20, SPRITE_SCIENTIST, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 0, TrainerAvader2, EVENT_BEAT_RED
