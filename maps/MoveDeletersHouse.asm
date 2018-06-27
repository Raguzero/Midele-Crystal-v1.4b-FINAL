	const_def 2 ; object constants
	const MOVEDELETERSHOUSE_SUPER_NERD
	const MOVEDELETERSHOUSE_REMINDER

MoveDeletersHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

MoveDeleter:
	faceplayer
	opentext
	special MoveDeletion
	waitbutton
	closetext
	end

MoveReminderScript:
	faceplayer
	opentext
	special MoveReminder
	waitbutton
	closetext
	end 
    
.intro_text:
	text "Hello! I'm the"
	line "Move Relearner!"

	para "I can help your"
	line "#mon remember"
	para "moves that they"
	line "have forgotten."

	para "I can do this for"
	line "you, in exchange"
	cont "for a SILVER LEAF."

	para "I collect them,"
	line "you see."
	prompt	
	
MoveDeletersHouseBookshelf:
	jumpstd difficultbookshelf

MoveDeletersHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, BLACKTHORN_CITY, 6
	warp_event  3,  7, BLACKTHORN_CITY, 6

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, MoveDeletersHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, MoveDeletersHouseBookshelf

	db 2 ; object events
	object_event  2,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoveDeleter, -1
	object_event  5,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MoveReminderScript, -1
