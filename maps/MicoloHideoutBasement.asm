  const_def 2 ; object constants
  const MICOLO_HIDEOUT_BASEMENT_FURRY
  const MICOLO_HIDEOUT_BASEMENT_MEWTWO
  const MICOLO_HIDEOUT_BASEMENT_MICOLO
  const MICOLO_HIDEOUT_BASEMENT_CATERMANO

MicoloHideoutBasement_MapScripts:
  db 0 ; scene scripts

  db 1 ; callbacks
  callback MAPCALLBACK_OBJECTS, .Catermano

.Catermano:
  checkevent EVENT_112
  iftrue .DisappearCatermano
  appear MICOLO_HIDEOUT_BASEMENT_CATERMANO
  return
.DisappearCatermano:
  disappear MICOLO_HIDEOUT_BASEMENT_CATERMANO
  return

MicoloHideoutBasementCatermano:
  opentext
  writetext CatermanoNoteText
  waitbutton
  special GiveCatermano
  iffalse .partyfull
  writetext CatermanoGivenText
  playsound SFX_KEY_ITEM
	waitsfx
	closetext
	setevent EVENT_112
  disappear MICOLO_HIDEOUT_BASEMENT_CATERMANO
  end
.partyfull
  writetext CatermanoPartyFullText
  waitbutton
  closetext
  end

MicoloHideoutBasementPCScript:
  opentext
  playsound SFX_BOOT_PC
  checkevent EVENT_114
  iftrue .already_got_pkhex
  writetext MicoloHideoutBasementPCPasswordText
  waitbutton
  special HackMon
  iftrue .correct
  writetext MicoloHideoutBasementPCIncorrectText
  playsound SFX_SHUT_DOWN_PC
  waitsfx
  cry MEWTWO
  pause 15
  closetext
  writecode VAR_BATTLETYPE, BATTLETYPE_SHINY
  loadwildmon MEWTWO, 100
  startbattle
  reloadmapafterbattle
  end
.correct
  writetext MicoloHideoutBasementPCCorrectText
  waitbutton
  verbosegiveitem PKHEX
  setevent EVENT_113
  closetext
  end
.already_got_pkhex
  writetext MicoloHideoutBasementPCAfterText
  waitbutton
  closetext
  end


TrainerOfficerFurry:
  trainer OFFICER, FURRY2, EVENT_10E, OfficerFurrySeenText2, OfficerFurryBeatenText2, 0, .Script

.Script:
  endifjustbattled
  opentext
  writetext OfficerFurryAfterText2
  waitbutton
  closetext
  end

TrainerCloneMewtwo2:
  trainer CLONE, MEWTWO_T, EVENT_10F, CloneMewtwo2SeenText, CloneMewtwo2BeatenText, 0, .Script
.Script:
  endifjustbattled
  opentext
  writetext CloneMewtwo2AfterText
  waitbutton
  closetext
  end

TrainerMicolo:
  trainer MASTERMIND, MICOLO, EVENT_110, MicoloHideoutSeenText, MicoloHideoutBeatenText, 0, .Script
.Script:
  endifjustbattled
  opentext
  writetext MicoloHideoutAfterText
  waitbutton
  closetext
  end

OfficerFurrySeenText2:
  text "Como?"
  line "Si, soy FURRY"
  cont "Trabajaba para"
  cont "MICOLO desde el"
  cont "principio."
  para "Todos se burlaban"
  line "de mi por mi odio"
  cont "hacia los hacks..."
  para "Pues ahora mis"
  line "#MON estan"
  cont "hackeados!"
  para "Jajaja!"
  line "Por fin me vengare"
  cont "de todos los que"
  cont "se burlaron de mi."
  done

OfficerFurryBeatenText2:
  text "He perdido incluso"
  line "con hacks?!"
  done

OfficerFurryAfterText2:
  text "No me dirijas la"
  line "palabra."
  done

MicoloHideoutSeenText:
  text "DARKRAI: yo era el"
  line "malo desde el"
  cont "principio."
  para "ARCEUS: calla yo"
  line "soy tu dios."
  para "DARKRAI: tu eres"
  line "un caballo blanco."
  para "ARCEUS: y tu eres"
  line "un fantasma negro."
  cont "xDDDDDDDDDD"
  done

MicoloHideoutBeatenText:
  text "En serio?"
  line "LOOOOOOOOOOOOOOL"
  done

MicoloHideoutAfterText:
  text "MAGIKARP: eres un"
  line "noob."
  para "FEEBAS: tu mas."
  done

CloneMewtwo2SeenText:
  text "PRAISE THE MICO."
  done

CloneMewtwo2BeatenText:
  text "VIVA MICOLO."
  done

CloneMewtwo2AfterText:
  text "LOOOOOOOOL"
  done

CatermanoNoteText:
  text "Hay una nota..."
  line "“CATERMANO de"
  cont "A.VADER."
  cont "Solo para los"
  cont "mas autistas."
  done

CatermanoPartyFullText:
  text "Your #MON party"
  line "is full."
  done

CatermanoGivenText:
  text "<PLAYER> received a"
  line "#MON."
  done

MicoloHideoutBasementPCPasswordText:
  text "Servidor central"
  line "de MIDELE."
  para "USER: MICOLO"
  line "PASSWORD..."
  done

MicoloHideoutBasementPCCorrectText:
  text "Iniciada sesion"
  line "como MICOLO."
  para "Descargando datos"
  line "de PKHex..."
  done

MicoloHideoutBasementPCIncorrectText:
  text "Inicio de sesion"
  line "fallido."
  para "Activando sistema"
  line "de seguridad."
  done

MicoloHideoutBasementPCAfterText:
  text "El PKHex ya ha"
  line "sido descargado."
  done


MicoloHideoutBasement_MapEvents:
  db 0, 0 ; filler

  db 1 ; warp events
  warp_event 9, 12, MICOLO_HIDEOUT, 2

  db 0 ; coord events

  db 2 ; bg events
  bg_event 4, 2, BGEVENT_UP, MicoloHideoutBasementPCScript
  bg_event 5, 2, BGEVENT_UP, MicoloHideoutBasementPCScript


  db 4 ; object events
  object_event  5, 7, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 1, TrainerOfficerFurry, -1
  object_event  7, 7, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 1, TrainerCloneMewtwo2, -1
  object_event  6, 3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerMicolo, -1
  object_event  2, 2, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MicoloHideoutBasementCatermano, EVENT_111
