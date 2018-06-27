	const_def 2 ; object constants
	const SILVERCAVEPOKECENTER1F_NURSE
	const SILVERCAVEPOKECENTER1F_GRANNY
	const CATERMANO

SilverCavePokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SilverCavePokecenter1FNurseScript:
	jumpstd pokecenternurse

SilverCavePokecenter1FGrannyScript:
	jumptextfaceplayer SilverCavePokecenter1FGrannyText

CatermanoScript:
	faceplayer
	opentext
	checkevent EVENT_21
	iftrue .alreadyhavecatermano
	writetext AvaderText_GiveCatermano
	yesorno
	iffalse .refusecatermano
	special GiveCatermano
	iffalse .partyfull
	writetext AvaderText_GivenCatermano
	buttonsound
	waitsfx
	writetext AvaderText_GotCatermano
	playsound SFX_KEY_ITEM
	waitsfx
	closetext
	setevent EVENT_21
	end

.alreadyhavecatermano
	writetext AvaderText_TakeCareOfCatermano
	waitbutton
	closetext
	end

.partyfull
	writetext AvaderText_PartyFull
	waitbutton
	closetext
	end

.refusecatermano
	writetext AvaderText_RefusedCatermano
	waitbutton
	closetext
	end

AvaderText_GiveCatermano:
	text "TEXTO OFRECER"
	line "CATERMANO"
	done

AvaderText_GivenCatermano:
	text "TEXTO DAR"
	line "CATERMANO"
	done

AvaderText_TakeCareOfCatermano:
	text "TEXTO TRAS DAR"
	line "CATERMANO"
	done

AvaderText_RefusedCatermano:
	text "TEXTO RECHAZAR"
	line "CATERMANO"
	done

AvaderText_GotCatermano:
	text "<PLAYER> received a"
	line "#MON."
	done

AvaderText_PartyFull:
	text "Your #MON party"
	line "is full."
	done

SilverCavePokecenter1FGrannyText:
	text "Trainers who seek"
	line "power climb MT."

	para "SILVER despite its"
	line "many dangers…"

	para "With their trusted"
	line "#MON, they must"

	para "feel they can go"
	line "anywhere…"
	done

SilverCavePokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, SILVER_CAVE_OUTSIDE, 1
	warp_event  4,  7, SILVER_CAVE_OUTSIDE, 1
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilverCavePokecenter1FNurseScript, -1
	object_event  1,  5, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 2, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SilverCavePokecenter1FGrannyScript, -1
	object_event  7,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CatermanoScript, -1
