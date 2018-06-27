	const_def 2 ; object constants
	const SILVERCAVEITEMROOMS_MOLTRES
	const SILVERCAVEITEMROOMS_POKE_BALL1
	const SILVERCAVEITEMROOMS_POKE_BALL2

SilverCaveItemRooms_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .Moltres

.Moltres:
    checkevent EVENT_FOUGHT_MOLTRES
    iftrue .NoAppear
    checkcode VAR_BADGES
    if_not_equal 16, .NoAppear
    jump .Appear

.Appear:
	appear SILVERCAVEITEMROOMS_MOLTRES
	return

.NoAppear:
	disappear SILVERCAVEITEMROOMS_MOLTRES
	return

Moltres:
	faceplayer
	opentext
	writetext MoltresText
	cry MOLTRES
	pause 15
	closetext
    setevent EVENT_FOUGHT_MOLTRES
	writecode VAR_BATTLETYPE, BATTLETYPE_SUICUNE
	loadwildmon MOLTRES, 60
	startbattle
	disappear SILVERCAVEITEMROOMS_MOLTRES
	reloadmapafterbattle
	end

MoltresText:
	text "Mol!"
	done

SilverCaveItemRoomsMaxRevive:
	itemball MAX_REVIVE

SilverCaveItemRoomsFullRestore:
	itemball FULL_RESTORE
	
SilverCaveItemRooms_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 13,  3, SILVER_CAVE_ROOM_2, 3
	warp_event  7, 15, SILVER_CAVE_ROOM_2, 4

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
    object_event 15, 11, SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 0, 1, -1, -1, PAL_OW_RED,PERSONTYPE_SCRIPT, 0, Moltres, EVENT_MOLTRES
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveItemRoomsMaxRevive, EVENT_SILVER_CAVE_ITEM_ROOMS_MAX_REVIVE
	object_event 12, 11, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SilverCaveItemRoomsFullRestore, EVENT_SILVER_CAVE_ITEM_ROOMS_FULL_RESTORE
