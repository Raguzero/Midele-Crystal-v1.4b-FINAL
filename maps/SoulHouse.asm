	const_def 2 ; object constants
	const SOULHOUSE_MRFUJI
	const SOULHOUSE_TEACHER
	const SOULHOUSE_LASS
	const SOULHOUSE_GRANNY

SoulHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerManiacLavender:
	trainer POKEMANIAC, LAVNDER2, EVENT_BEAT_LAVENDER, ManiacLavenderSeenText, ManiacLavenderBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext ManiacLavenderAfterBattleText
	waitbutton
	closetext
	end

ManiacLavenderSeenText:

    text "That A.VADER guy."
    line "His MIDELE power"
    cont "is too strong."

    para "What do yo say?"
    line "ULTRAMAGIC? Me?"
    cont "Ah! I remember."

    para "You beat me in"
    line "TOHJO FALLS."

    para "This time it will"
    line "be different."

    para "I will defeat"
    line "you and the"
    cont "JOHTO police."

    para "The MAFIA will be"
    line "revived!"

    para "You cannot win,"
    line "prepare yourself."
    cont "DOOD!"
    done

ManiacLavenderBeatenText:
    text "Not again, DOOD!"
    done

ManiacLavenderAfterBattleText:
    text "Please, don't tell"
    line "this to JOHTO"
    cont "POLICE chief,"
    cont "MELKOR."

    para "I was just"
    line "kidding, I'm"
    cont "not ULTRAMAGIC."
    done

MrFuji:
	jumptextfaceplayer MrFujiText

SoulHouseTeacherScript:
	jumptextfaceplayer SoulHouseTeacherText

SoulHouseLassScript:
	jumptextfaceplayer SoulHouseLassText

SoulHouseGrannyScript:
	jumptextfaceplayer SoulHouseGrannyText

MrFujiText:
	text "MR.FUJI: Welcome."

	para "Hmm… You appear to"
	line "be raising your"

	para "#MON in a kind"
	line "and loving manner."

	para "#MON lovers"
	line "come here to pay"

	para "their respects to"
	line "departed #MON."

	para "Please offer con-"
	line "dolences for the"

	para "souls of the de-"
	line "parted #MON."

	para "I'm sure that will"
	line "make them happy."
	done

SoulHouseTeacherText:
	text "There are other"
	line "graves of #MON"
	cont "here, I think."

	para "There are many"
	line "chambers that only"
	cont "MR.FUJI may enter."
	done

SoulHouseLassText:
	text "I came with my mom"
	line "to visit #MON"
	cont "graves…"
	done

SoulHouseGrannyText:
	text "The #MON that"
	line "lived with me…"

	para "I loved them like"
	line "my grandchildren…"
	done

SoulHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4,  7, LAVENDER_TOWN, 6
	warp_event  5,  7, LAVENDER_TOWN, 6

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event  4,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MrFuji, -1
	object_event  7,  3, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseTeacherScript, -1
	object_event  2,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseLassScript, -1
	object_event  1,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SoulHouseGrannyScript, -1
	object_event  2, 7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerManiacLavender, EVENT_BEAT_RED
