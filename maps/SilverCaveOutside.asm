	const_def 2 ; object constants
	const SILVERCAVEOUTSIDE_PSYCHIC_T
	const SILVERCAVEOUTSIDE_GRUNTM
	const SILVERCAVEOUTSIDE_JUGGLER

SilverCaveOutside_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, .FlyPoint

.FlyPoint:
	setflag ENGINE_FLYPOINT_SILVER_CAVE
	return

TrainerPsychicTSantyago:
	trainer PSYCHIC_T, SANTYAGO, EVENT_BEAT_SANTYAGO, PsychicTSantiagoSeenText, PsychicTSantiagoBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PsychicTSantiagoAfterBattleText
	waitbutton
	closetext
	end
	
PsychicTSantiagoSeenText:
    text "Hey!"
    line "You look handsome"
    para "We should battle"

    para "If I win"
    line "You will become "

    para "my slave!"
    line "But if You win,"

    para "I'll give you"
    line "my number"

    para "so we can meet"
	line "up and do naughty"
	cont "stuff"

    para "Deal?"
    done


PsychicTSantiagoBeatenText:
    text "All according"
    line "to Keikaku"
    done

PsychicTSantiagoAfterBattleText
   text "Congratulations!"
   line "You beated me!"
   para "Even the power of"

   para "my CELEBI wasn't" 
   line "enough."
   
   para "I mean, i can" 
   line "still use CELEBI"
   cont "to go back"
   cont "in time and" 
   cont "defeat you."

   para "But the way our"
   line "eyes crossed,"
   cont "tells me you"
   cont "already fell"
   cont "in love with me" 
   cont ":heart: ."
   done

GruntMGhaddar:
	trainer GRUNTM, GHADDAR, EVENT_BEAT_TRAINER, GruntMGhaddarSeenText, GruntMGhaddarBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntMGhaddarAfterBattleText
	waitbutton
	closetext
	end
	
GruntMGhaddarSeenText:
    text "..."
    line "You don't"
    cont "understand."
    
    para "I've been dead"
    line "for 35 years."
 
    para "Today is the"
    line "day I live."
    done


GruntMGhaddarBeatenText:
    text "..."
    line "Buddy..."
    done

GruntMGhaddarAfterBattleText
    text "I… I'm crushed…"
    line "It's over..."
    cont "..."
 
    para "Did I do"
    line "the right thing?"
    done

JugglerUtalawea:
	trainer JUGGLER, UTALAWEA, EVENT_BEAT_TRAINER2, JugglerUtalaweaSeenText, JugglerUtalaweaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JugglerUtalaweaAfterBattleText
	waitbutton
	closetext
	end
	
JugglerUtalaweaSeenText:
    text "Jelou!"
    line "Aim not espik"
	cont "llur idiom."
    para "De todas formas,"
 
    para "no me hinchas las"
	line "pelotas."
    cont "Que reviento!"
    done

JugglerUtalaweaBeatenText:
    text "Ayyyyyyyyy!"
    line "Mis bolas!!"
    done

JugglerUtalaweaAfterBattleText
    text "Sabia que no era"
	line "buena idea."
    cont "Pero lo hice..."
    cont "Y ahora tengo"
	cont "las bolas"
	cont "destrozadas."
    done

TrainerSupernerdDarki:
	trainer SUPER_NERD, DARKI, EVENT_BEAT_TRAINER7, SuperNerdDarkiSeenText, SuperNerdDarkiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SuperNerdDarkiAfterBattleText
	waitbutton
	closetext
	end
	
SuperNerdDarkiSeenText:
	text "Hey Dude!"
	
	para "Do you know how"
	line "to reverse"
	cont "entropy?"
	done

SuperNerdDarkiBeatenText:
	text "Waaaarggh!"
	line "We are all"
	cont "condemned!"
	done

SuperNerdDarkiAfterBattleText
	text "I think i have to"
    line "mature more to"
	cont "find the answer…"
	
	para "leave me alone!"
	done

TrainerBeautyEntropia:
	trainer BEAUTY, ENTROPIA, EVENT_BEAT_TRAINER8, BeautyEntropiaSeenText, BeautyEntropiaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyEntropiaAfterBattleText
	waitbutton
	closetext
	end

BeautyEntropiaSeenText:
    text "Hello yellow!"

    para "No matter what"
    line "PKMN you have,"
    cont "you better"
    cont "work it gurl"
    done

BeautyEntropiaBeatenText:
    text "And now…"
    line "Sashay away!"
    done

BeautyEntropiaAfterBattleText
    text "Category was:"
    line "How to lose"
    cont "eleganza"
    cont "extravanganza."
    
    para "I promise my"
    line "strength will"
    cont "increase over"
    cont "time."
    done

CooltrainermDenis:
	trainer COOLTRAINERM, DENYS, EVENT_12, DenisSeenText, DenisBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext DenisAfterBattleText
	waitbutton
	closetext
	end
	
DenisSeenText:
    text "Hello novato!"
	line "Estos montes son"
	cont "el lugar perfecto"
	cont "para entrenar mis" 
	cont "peculiares" 
	para "habilidades." 
	
	para "Vete poniendo el"
	line "casco Anti-Hax,"
	cont "lo vas a"
	cont "necesitar"
	done

DenisBeatenText:
    text "RIP"
    done

DenisAfterBattleText
    text "He perdido solo"
	line "porque"
	cont "Mega Abomasnow"
	cont "no existe en"
	para "esta Region."
	
	para "Llega a haber uno" 
	line "por aqui y te gano"
	cont "en cualquier"
	cont "categoria,"
	cont "carisma incluida."
    done

MtSilverPokecenterSign:
	jumpstd pokecentersign

MtSilverSign:
	jumptext MtSilverSignText

SilverCaveOutsideHiddenFullRestore:
	hiddenitem FULL_RESTORE, EVENT_SILVER_CAVE_OUTSIDE_HIDDEN_FULL_RESTORE

MtSilverSignText:
	text "MT.SILVER"
	done

SilverCaveOutside_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 23, 19, SILVER_CAVE_POKECENTER_1F, 1
	warp_event 18, 11, SILVER_CAVE_ROOM_1, 1

	db 0 ; coord events

	db 3 ; bg events
	bg_event 24, 19, BGEVENT_READ, MtSilverPokecenterSign
	bg_event 17, 13, BGEVENT_READ, MtSilverSign
	bg_event  9, 25, BGEVENT_ITEM, SilverCaveOutsideHiddenFullRestore

	db 6 ; object events
	object_event  28, 30, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerPsychicTSantyago, -1
	object_event  18, 21, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, GruntMGhaddar, -1
	object_event  24, 29, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, JugglerUtalawea, -1
	object_event  28, 32, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 1, TrainerSupernerdDarki, -1
	object_event  37, 33, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBeautyEntropia, -1
	object_event  18, 24, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, CooltrainermDenis, -1