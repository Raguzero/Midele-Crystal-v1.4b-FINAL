	const_def 2 ; object constants
	const PLAYERSHOUSE2F_CONSOLE
	const PLAYERSHOUSE2F_DOLL_1
	const PLAYERSHOUSE2F_DOLL_2
	const PLAYERSHOUSE2F_BIG_DOLL
	const PLAYERSHOUSE2F_POKE_BALL
	const PLAYERSHOUSE2F_POKE_BALL2

PlayersHouse2F_MapScripts:
	db 0 ; scene scripts

	db 3 ; callbacks
	callback MAPCALLBACK_NEWMAP, .InitializeRoom
	callback MAPCALLBACK_TILES, .SetSpawn
	callback MAPCALLBACK_OBJECTS, .TrofeoBalls

; unused
.Null:
	end

.InitializeRoom:
	special ToggleDecorationsVisibility
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	checkevent EVENT_INITIALIZED_EVENTS
	iftrue .SkipInitialization
	jumpstd initializeevents
	return

.SkipInitialization:
	return

.SetSpawn:
	special ToggleMaptileDecorations
	return

	db 0, 0, 0 ; filler

.TrofeoBalls:
	checkevent EVENT_GOT_PLAYERS_HOUSE_POKEBALL
	iftrue .DissapearTrofeo1
	checkevent EVENT_BEAT_ELITE_FOUR
	iffalse .DissapearTrofeo1
	appear PLAYERSHOUSE2F_POKE_BALL
	jump .Trofeo2

.DissapearTrofeo1
	disappear PLAYERSHOUSE2F_POKE_BALL

.Trofeo2
	checkevent EVENT_GOT_PLAYERS_HOUSE_POKEBALL2
	iftrue .DissapearTrofeo2
	checkevent EVENT_BEAT_RED
	iffalse .DissapearTrofeo2
	appear PLAYERSHOUSE2F_POKE_BALL2
	return
.DissapearTrofeo2
	disappear PLAYERSHOUSE2F_POKE_BALL2
	return

Trofeo:
	opentext
	writetext Notatrofeo1
	waitbutton
	verbosegiveitem NORMAL_BOX
	iffalse .NoEspacio
	closetext
	setevent EVENT_GOT_PLAYERS_HOUSE_POKEBALL
	disappear PLAYERSHOUSE2F_POKE_BALL
	end

.NoEspacio:
	closetext
	end

Trofeo2:
	opentext
	writetext Notatrofeo2
	waitbutton
	verbosegiveitem GORGEOUS_BOX
	iffalse .NoEspacio
	closetext
	setevent EVENT_GOT_PLAYERS_HOUSE_POKEBALL2
	disappear PLAYERSHOUSE2F_POKE_BALL2
	end
.NoEspacio:
	closetext
	end

Doll1Script:
	describedecoration DECODESC_LEFT_DOLL

Doll2Script:
	describedecoration DECODESC_RIGHT_DOLL

BigDollScript:
	describedecoration DECODESC_BIG_DOLL

GameConsoleScript:
	describedecoration DECODESC_CONSOLE

PlayersHousePosterScript:
	conditional_event EVENT_PLAYERS_ROOM_POSTER, .Script

.Script:
	describedecoration DECODESC_POSTER

PlayersHouseRadioScript:
	opentext
	writetext MusicPlayerText
	waitbutton
	special MusicPlayer
	closetext
	end
    ;setevent EVENT_BEAT_ELITE_FOUR ;quitar
    ;setevent EVENT_BEAT_RED  ;quitar
	;setevent EVENT_BEAT_AVADER  ;quitar
	;opentext
	;givepoke LUGIA, 100, BERRY
	;givepoke BOMBSEEKER, 99, BERRY
	;verbosegiveitem HM_FLY
	;closetext
	;setflag ENGINE_FLYPOINT_PLAYERS_HOUSE
	;setflag ENGINE_FLYPOINT_VIRIDIAN_POKECENTER
	;setflag ENGINE_FLYPOINT_PALLET
	;setflag ENGINE_FLYPOINT_VIRIDIAN
	;setflag ENGINE_FLYPOINT_PEWTER
	;setflag ENGINE_FLYPOINT_CERULEAN
	;setflag ENGINE_FLYPOINT_ROCK_TUNNEL
	;setflag ENGINE_FLYPOINT_VERMILION
	;setflag ENGINE_FLYPOINT_LAVENDER
	;setflag ENGINE_FLYPOINT_SAFFRON
	;setflag ENGINE_FLYPOINT_CELADON
	;setflag ENGINE_FLYPOINT_FUCHSIA
	;setflag ENGINE_FLYPOINT_CINNABAR
	;setflag ENGINE_FLYPOINT_INDIGO_PLATEAU ; 40
	;setflag ENGINE_FLYPOINT_NEW_BARK
	;setflag ENGINE_FLYPOINT_CHERRYGROVE
	;setflag ENGINE_FLYPOINT_VIOLET
	;setflag ENGINE_FLYPOINT_AZALEA
	;setflag ENGINE_FLYPOINT_CIANWOOD
	;setflag ENGINE_FLYPOINT_GOLDENROD
	;setflag ENGINE_FLYPOINT_OLIVINE
	;setflag ENGINE_FLYPOINT_ECRUTEAK
	;setflag ENGINE_FLYPOINT_MAHOGANY
	;setflag ENGINE_FLYPOINT_LAKE_OF_RAGE
	;setflag ENGINE_FLYPOINT_BLACKTHORN
	;setflag ENGINE_FLYPOINT_SILVER_CAVE
	;setflag ENGINE_FLYPOINT_UNUSED
	;clearevent EVENT_RED_IN_MT_SILVER
	;setflag ENGINE_STORMBADGE
	;end
	; QUITAR LO DE ARRIBA
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .NormalRadio
	checkevent EVENT_LISTENED_TO_INITIAL_RADIO
	iftrue .AbbreviatedRadio
	playmusic MUSIC_POKEMON_TALK
	opentext
	writetext PlayersRadioText1
	pause 45
	writetext PlayersRadioText2
	pause 45
	writetext PlayersRadioText3
	pause 45
	musicfadeout MUSIC_NEW_BARK_TOWN, 16
	writetext PlayersRadioText4
	pause 45
	closetext
	setevent EVENT_LISTENED_TO_INITIAL_RADIO
	end

.NormalRadio:
	jumpstd radio1

.AbbreviatedRadio:
	opentext
	writetext PlayersRadioText4
	pause 45
	closetext
	end

PlayersHouseBookshelfScript:
	jumpstd picturebookshelf

PlayersHousePCScript:
	opentext
	special PlayersHousePC
	iftrue .Warp
	closetext
	end
.Warp:
	warp NONE, 0, 0
	end

PlayersRadioText1:
	text "PROF.OAK'S #MON"
	line "TALK! Please tune"
	cont "in next time!"
	done

PlayersRadioText2:
	text "#MON CHANNEL!"
	done

PlayersRadioText3:
	text "This is DJ MARY,"
	line "your co-host!"
	done

PlayersRadioText4:
	text "#MON!"
	line "#MON CHANNEL…"
	done

Notatrofeo1:
	text "This package is"
	line "for <PLAYER>"
	cont "to be crowned"
	cont "champion of the"
	cont "Pokemon League."
    cont "-Signed by Lance-"
	done

Notatrofeo2:
	text "This package is"
	line "for <PLAYER>"
	cont "to beat RED."
    cont "-Signed by"
	cont "an admirer-"
	done

MusicPlayerText:
	text "It's a music"
	line "player!"
	done

PlayersHouse2F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event  7,  0, PLAYERS_HOUSE_1F, 1

	db 0 ; coord events

	db 4 ; bg events
	bg_event  2,  1, BGEVENT_UP, PlayersHousePCScript
	bg_event  3,  1, BGEVENT_READ, PlayersHouseRadioScript
	bg_event  5,  1, BGEVENT_READ, PlayersHouseBookshelfScript
	bg_event  6,  0, BGEVENT_IFSET, PlayersHousePosterScript

	db 6 ; object events
	object_event  4,  2, SPRITE_CONSOLE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GameConsoleScript, EVENT_PLAYERS_HOUSE_2F_CONSOLE
	object_event  4,  4, SPRITE_DOLL_1, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Doll1Script, EVENT_PLAYERS_HOUSE_2F_DOLL_1
	object_event  5,  4, SPRITE_DOLL_2, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Doll2Script, EVENT_PLAYERS_HOUSE_2F_DOLL_2
	object_event  0,  1, SPRITE_BIG_DOLL, SPRITEMOVEDATA_BIGDOLL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BigDollScript, EVENT_PLAYERS_HOUSE_2F_BIG_DOLL
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Trofeo, EVENT_PLAYERS_HOUSE_POKEBALL
	object_event  6,  5, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Trofeo2, EVENT_PLAYERS_HOUSE_POKEBALL2
