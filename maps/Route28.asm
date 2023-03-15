	const_def 2 ; object constants
	const ROUTE28_SUPERNERD1
	const ROUTE28_COOLTRAINERM1
	const ROUTE28_SWIMMERGUY1
	const ROUTE28_CAMPERM1
	const ROUTE28_COOLTRAINERM2
	const ROUTE28_CAMPERM2
	const ROUTE28_JUGGLER1

Route28_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

TrainerSupernerdGoldy:
	trainer SUPER_NERD, GOLDY, EVENT_BEAT_GOLDY, SupernerdGoldySeenText, SupernerdGoldyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SupernerdGoldyAfterBattleText
	waitbutton
	closetext
	end
	
SupernerdGoldySeenText:
    text "*snif* *snif*"
    line "That smell..."
 
    para "You're not from"
    line "the KANTO region,"
    cont "am I right?"
 
    para "Well, a battle is"
    line "a battle, so"
    cont "prepare for your"
    cont "defeat!"
    done

SupernerdGoldyBeatenText:
    text "W-W-W-WHAAAAT!?"
    done

SupernerdGoldyAfterBattleText
    text "How did I lose"
    line "so easily?"
    para "..."

    para "Oh... So you are"
    line "a CHAMPION..."
    cont "Should I have"
    para "known it..."

    para "No, I'm not"
    line "thinking about"
    cont "if I did run away"
    cont "or anything"
    cont "like that."

    para "Why are you"
    line "staring at me!?"
    done

TrainerCooltrainermRagu:
	trainer COOLTRAINERM, RAGU, EVENT_BEAT_RAGU, CooltrainermRaguSeenText, CooltrainermRaguBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermRaguAfterBattleText
	waitbutton
	closetext
	end

CooltrainermRaguSeenText:
    text "La gente me"
	line "conoce como..."
    para "Master Hax!"

    para "Todos me temen"
	line "por mi Hax!"
	cont "Con un solo"
	cont "ataque puedo"
	cont "congelarte,"
	cont "quemarte,"
	cont "paralizarte,"
	cont "hacer retroceder,"
	cont "y propinarte un" 
	para "GOLPE CRITICO!!"

	para "Estas preparado" 
	line "para ser Haxeado?"
	done

CooltrainermRaguBeatenText:
    text "NOOOOO!!!"
    done

CooltrainermRaguAfterBattleText
    text "Tienes algun"
	line "Pikachu para"
	cont "poder aplastarlo"
	cont "con mis preciosas"
	cont "manos?"
    done

TrainerSwimmermPacoBeer:
	trainer SWIMMERM, PACOBEER, EVENT_BEAT_PACOCHEF, SwimmermPacoBeerSeenText, SwimmermPacoBeerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SwimmermPacoBeerAfterBattleText
	waitbutton
	closetext
	end
	
SwimmermPacoBeerSeenText:
    text "Gluurgrggh..."  
	line "Mi nombre es..."     
    para "uh... PACOBEER!"  

	para "Dicen que deberia"
	line "cuidarme." 

	para "...no lo creo"   
	line "Y, tu..."

	para "Quieres algo de"
	line "hierba?"
	
	para "YO QUIERO WHISKEY"
	line "CARALLO."
    done

SwimmermPacoBeerBeatenText:
    text "MELKOR DESBANEA"
	line "A LAVNDER!!"
	cont "Bueno..."
	cont "Ire a tomar otros"
	cont "69 litros"
    done

SwimmermPacoBeerAfterBattleText
    text "Sabes..."  
	line "Me dijeron que..."
    cont "nunca llegaria a"
	para "nada..."
    
	para "Tenian razon."
	line "Mucha."  
    cont "Pero el alcohol en"
	cont "alta mar es la p.."   
	cont "Mejor me callo que"
	para "Ragu observa."     
    
	para "Espera un momentoo"      
	line "Saluda a"
	cont "la papelera"
	cont "de mi parte..."
	cont "Yo voy a vomitar."     
    done

TrainerCamperSpolker:
	trainer CAMPER, SPOLKER, EVENT_BEAT_SPOLKER, CamperSpolkerSeenText, CamperSpolkerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperSpolkerAfterBattleText
	waitbutton
	closetext
	end
	
CamperSpolkerSeenText:
    text "I'm Spolker, but"
    line "if you distill"
    cont "some Sitrus"
	para "Berries."
    
	para "I can become in"
    line "SOPEN!!!"
    para "You!"
    
	para "Give me alcohol!"
    line "Hip!"
    done

CamperSpolkerBeatenText:
    text "Ouch! My alcohol.."
    done

CamperSpolkerAfterBattleText
    text "Now I don't"
    line "have any money"
    cont "for buy some gin"
	para "or vodka."
    
	para "I'll have to"
	line "stay sober. Well"
    cont "I'm going to look"
    cont "for the Four Girl."
    cont "Wish me luck!"
    done

TrainerCooltrainermShelea:
	trainer COOLTRAINERM, SHELEA, EVENT_BEAT_SHELEA, CooltrainermSheleaSeenText, CooltrainermSheleaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainermSheleaAfterBattleText
	waitbutton
	closetext
	end

CooltrainermSheleaSeenText:
    text "I'm Shelea,"
    line "Alpha Shelea"
    para "Do you know how a"

	para "good battle start?"
    line "Both trainers look" 

	para "each other eyes."
    line "And they give"
	
	para "their best."

    para "But a but battle"
	line "starts with..."
    
	para "RAH RAH AH-AH-AH!"
    line "RO MAH RO MAH-MAH!"
    done

CooltrainermSheleaBeatenText:
    text "Opssss!"
    line "I've lost my wig"
    done

CooltrainermSheleaAfterBattleText
    text "Okay guuuurl"
    line "I want your"
	para "revenge."
    
	para "You're a criminal"
    line "like so many boys."
    
	para "Alejandro,"
	line "Fernando,"
	
	para "Roberto..."
    line "Walk, walk"
    
	para "fashion baby"
    line "See u later!"
	done
	
TrainerCamperExi:
	trainer CAMPER, EXI, EVENT_BEAT_EXI, CamperExiSeenText, CamperExiBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CamperExiAfterBattleText
	waitbutton
	closetext
	end
	
CamperExiSeenText:
    text "Is it me you say"
	line "you are looking"
	para "for?"

    para "I'm forming a"
	line "Pokémon rescue"
	
	para "squad"
    line "i hope to see"
	
	para "you around here,"
	line "when you"
	
	para "feel like."
    line "Both trainers are"
	
	para "face to face."
    line "Sowing their great"
	
	para "determination to"
	line "each other."

    para "The battle starts!"
    line "Show me what"
	
	para "you got."
    line "Dont make me laugh"
    done

CamperExiBeatenText:
    text "Both we made our" 
	line "best."
    line "I hope to see you"
	para "again."
    done

CamperExiAfterBattleText
    text "Okay. Do you want"
	line "to fight me again?"
    para "Are you..."
	
    para "Uhm, forget what"
	line "i was about to say"
	
	para ", just ignore it."
    line "Prove me"
	
	para "i am wrong"
    line "I dare you,"
	
	para "i double"
	line "dare you."
	
    para "Get ready"
    line "you were readier" 
	
	para "that me, ugh."
    line "Hope you join the"
	
	para "rangers,"
	line "i could lead"

	para "you down the path"
	line "that rocks"
    done

TrainerJugglerMerum:
	trainer JUGGLER, MERUM, EVENT_BEAT_MERUM, JugglerMerumSeenText, JugglerMerumBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JugglerMerumAfterBattleText
	waitbutton
	closetext
	end
	
JugglerMerumSeenText:
    text "Mi pokemon se ha"
    line "perdido. Me ayudas"
	cont "a buscarlo?"
    done

JugglerMerumBeatenText:
    text "No esta por aqui?"
	line "Pues manda narices"
    done

JugglerMerumAfterBattleText
    text "No entiendo como"
    line "el pokemon Brujula"
	cont "podria perderse."
    done

CooltrainerFSapph:
	trainer COOLTRAINERF, SAPPH, EVENT_BEAT_TRAINER9, CooltrainerFSapphSeenText, CooltrainerFSapphBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerFSapphAfterBattleText
	waitbutton
	closetext
	end
	
CooltrainerFSapphSeenText:
    text "Ah... ah..."
    line "I want..."
    cont "...your milk..."
    done

CooltrainerFSapphBeatenText:
    text "'your milk' i"
    line "told Miltank!"
    done

CooltrainerFSapphAfterBattleText
    text "Ah... ah..."
    line "(I'm tired)"
    cont "I forgive you"
    cont "for defeating"
    cont "me but not for"
    cont "thinking badly,"
    cont "baby."
    done	

Route28Sign:
	jumptext Route28SignText

Route28HiddenRareCandy:
	hiddenitem RARE_CANDY, EVENT_ROUTE_28_HIDDEN_RARE_CANDY

Route28SignText:
	text "ROUTE 28"
	done

Route28_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  7,  3, ROUTE_28_STEEL_WING_HOUSE, 1
	warp_event 33,  5, VICTORY_ROAD_GATE, 7

	db 0 ; coord events

	db 2 ; bg events
	bg_event 31,  5, BGEVENT_READ, Route28Sign
	bg_event 25,  2, BGEVENT_ITEM, Route28HiddenRareCandy

	db 8 ; object events
	object_event  31, 6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 4, TrainerSupernerdGoldy, -1
	object_event  17, 9, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerCooltrainermRagu, -1
	object_event  21, 9, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerSwimmermPacoBeer, EVENT_BEAT_RED
	object_event  7, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerCamperSpolker, -1
	object_event  13, 12, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerCooltrainermShelea, -1
	object_event  4, 12, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCamperExi, -1
	object_event  31, 11, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerJugglerMerum, -1
	object_event  24, 9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 6, CooltrainerFSapph, -1
