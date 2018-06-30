  const_def 2 ; object constants
  const MICOLO_HIDEOUT_TOPO
  const MICOLO_HIDEOUT_LAVENDER
  const MICOLO_HIDEOUT_AVADER
  const MICOLO_HIDEOUT_PHENT
  const MICOLO_HIODEUT_PACO
  const MICOLO_HIODEUT_SANTY
  const MICOLO_HIDEOUT_MEWTWO
  const MICOLO_HIDEOUT_ITEM_MUSIC_PLAYER
  const MICOLO_HIDEOUT_ITEM_SACRED_ASH

MicoloHideout_MapScripts:
  db 0 ; scene scripts

  db 0 ; callbacks


MicoloHideoutPC1Script:
  opentext
  playsound SFX_BOOT_PC
  writetext MicoloHideoutPC1QuestionText
  yesorno
  iftrue .hackeo_midelar
  writetext MicoloHideoutPC1NoText
  waitbutton
  playsound SFX_SHUT_DOWN_PC
  closetext
  end
.hackeo_midelar
  writetext MicoloHideoutPC1YesText
  waitbutton
  cry MEWTWO
  pause 15
  closetext
  writecode VAR_BATTLETYPE, BATTLETYPE_SHINY
  loadwildmon MEWTWO, 100
  startbattle
  reloadmapafterbattle
  end

MicoloHideoutPC2Script:
  opentext
  playsound SFX_BOOT_PC
  writetext MicoloHideoutPC2Text
  waitbutton
  playsound SFX_SHUT_DOWN_PC
  closetext
  end

MicoloHideoutPC3Script:
  opentext
  playsound SFX_BOOT_PC
  writetext MicoloHideoutPC3Text
  waitbutton
  playsound SFX_SHUT_DOWN_PC
  closetext
  end

MicoloHideoutPC4Script:
  opentext
  playsound SFX_BOOT_PC
  writetext MicoloHideoutPC4Text
  waitbutton
  playsound SFX_SHUT_DOWN_PC
  closetext
  end

MicoloHideoutPC5Script:
  opentext
  playsound SFX_BOOT_PC
  writetext MicoloHideoutPC5Text
  waitbutton
  playsound SFX_SHUT_DOWN_PC
  closetext
  end

MicoloHideoutPC6Script:
  opentext
  playsound SFX_BOOT_PC
  writetext MicoloHideoutPC6Text
  waitbutton
  playsound SFX_SHUT_DOWN_PC
  closetext
  end

MicoloHideoutPC7Script:
  opentext
  playsound SFX_BOOT_PC
  writetext MicoloHideoutPC6AskText
  yesorno
  iftrue .cure
  playsound SFX_SHUT_DOWN_PC
  closetext
  end
.cure
  writetext MicoloHideoutPC6YesText
  waitbutton
  playsound SFX_SHUT_DOWN_PC
  closetext
  end


MicoloHideoutNote1Script:
  opentext
  writetext MicoloHideoutNote1Text
  waitbutton
  closetext
  end

MicoloHideoutNote2Script:
  opentext
  writetext MicoloHideoutNote2Text
  waitbutton
  closetext
  end

MicoloHideoutJournal1Script:
  opentext
  writetext MicoloHideoutJournal1Text
  waitbutton
  closetext
  end

MicoloHideoutJournal2Script:
  opentext
  writetext MicoloHideoutJournal2Text
  waitbutton
  closetext
  end

MicoloHideoutJournal3Script:
  opentext
  writetext MicoloHideoutJournal3Text
  waitbutton
  closetext
  end

MicoloHideoutGoldyNoteScript:
  opentext
  writetext MicoloHideoutGoldyNoteText
  waitbutton
  closetext
  end

MicoloHideoutTopoNoteScript:
  opentext
  writetext MicoloHideoutTopoNoteText
  waitbutton
  closetext
  end

MicoloHideoutSantyNoteScript:
  opentext
  writetext MicoloHideoutSantyNoteText
  waitbutton
  closetext
  end

MicoloHideoutPacoNoteScript:
  opentext
  writetext MicoloHideoutPacoNoteText
  waitbutton
  closetext
  end

MicoloHideoutFurryNoteScript:
  opentext
  writetext MicoloHideoutFurryNoteText
  waitbutton
  closetext
  end


MicoloHideoutFDEScript:
  opentext
  writetext MicoloHideoutFDEText
  waitbutton
  closetext
  end

MicoloHideoutPC1QuestionText:
  text "Encendido PKHex."
  line "Confirme el hackeo"
  cont "midelar."
  done

MicoloHideoutPC1YesText:
  text "Ejecutando hackeo"
  line "midelar..."
  done

MicoloHideoutPC1NoText:
  text "Hackeo midelar"
  line "denegado."
  done

MicoloHideoutPC2Text:
  text "Mostrando datos de"
  line "Pokemon hackeados:"
  para "“2000 #MON"
  line "hackeados han sido"
  cont "distribuidos y ya"
  cont "han cruzado la"
  cont "frontera de JOHTO”"
  done

MicoloHideoutPC3Text:
  text "Mostrando datos"
  line "sobre beneficios:"
  para "“Venta de Pokemon:"
  line "650000¥."
  para "Venta de"
  line "monociclos:"
  cont "1000000¥."
  para "Beneficio total: "
  line "1650000¥.”"
  done

MicoloHideoutPC4Text:
  text "Mostrando datos"
  line "sobre integrantes"
  cont "de MIDELE:"
  para "“A.VADER: ayudante"
  line "de clonacion 1."
  cont "Sueldo: 500000¥."
  para "PHENT: ayudante de"
  line "clonacion 2."
  cont "Sueldo: 500000¥."
  para "PACOCHEF: lacayo."
  line "Sueldo: 25000¥."
  para "ULTRAMAGIC: agente"
  line "de operaciones."
  cont "Sueldo: 325000¥."
  para "TOPO: seguridad."
  line "Sueldo 75000¥.”"
  done

MicoloHideoutPC5Text:
  text "Mostrando datos"
  line "sobre personas"
  cont "peligrosas:"
  para "“MELKOR: jefe de"
  line "policia de JOHTO."
  para "ALLIARE: segunda"
  line "al cargo de la"
  cont "policia de JOHTO."
  para "TSURUKO: alto"
  line "cargo de la"
  cont "policia de JOHTO."
  para "Se debe evitar a"
  line "toda costa que"
  cont "estos individuos"
  cont "nos localicen."
  para "Debemos"
  line "observarlos mas de"
  cont "cerca...”"
  done

MicoloHideoutPC6Text:
  text "Hay una cadena"
  line "de e-mail:"
  para "“ATS: nintendo"
  line "N: que"
  cont "ATS: va a haber"
  cont "mega golem"
  cont "N: si"
  cont "ATS: ok”"
  done

MicoloHideoutPC6AskText:
  text "Desea curar a sus"
  line "#MON?"
  done

MicoloHideoutPC6YesText:
  text "Pues vaya a un"
  line "Centro #MON."
  done

MicoloHideoutJournal1Text:
  text "Diario de Micolo,"
  line "1 de enero de X"
  para "Mi sistema de hack"
  line "de Pokemon ha sido"
  cont "un exito."
  para "Experimentare bajo"
  line "la guarderia, y"
  cont "sera mi tapadera."
  done

MicoloHideoutJournal2Text:
  text "Diario de Micolo,"
  line "4 de febrero."
  para "A.VADER ha"
  line "aparecido y le he"
  cont "dado varios de mis"
  cont "MEW."
  para "Dice que los usara"
  line "para liberar a"
  cont "ULTRAMAGIC."
  cont "El plan progresa"
  cont "adecuadamente."
  done

MicoloHideoutJournal3Text:
  text "Diario de Micolo,"
  line "23 de febrero de X"
  para "ULTRAMAGIC ha sido"
  line "liberado."
  cont "Su objetivo es"
  cont "causar caos en"
  cont "la region para"
  cont "poder seguir con"
  cont "mis experimentos."
  para "En otro orden de"
  line "cosas, parece que"
  cont "A.VADER se niega a"
  cont "devolverme a mis"
  cont "MEW."
  done

MicoloHideoutNote1Text:
  text "Hay algo escrito"
  line "en una nota:"
  para "“Parece que fallos"
  line "en el proceso de"
  cont "clonacion causan"
  cont "huevos de MEWTWO."
  cont "Se requiere mas"
  cont "investigacion”"
  done

MicoloHideoutNote2Text:
  text "Hay algo escrito"
  line "en una nota:"
  para "“MIDELE POWER, un"
  line "ataque creado"
  cont "a partir del"
  cont "poder de MIDELE."
  para "Debemos investigar"
  line "mas a fondo este"
  cont "ataque."
  done

MicoloHideoutGoldyNoteText:
  text "Datos Sujeto 01:"
  line "Nombre: Goldy."
  cont "Clonacion: Apto."
  para "Anotaciones:"
  line "Parece que este"
  cont "sujeto posee"
  cont "habilidades de"
  cont "viaje entre"
  cont "dimensiones."
  para "Parece estar"
  line "relacionado con"
  cont "A.VADER."
  cont "Se requiere"
  cont "mas investigacion."
  done

MicoloHideoutTopoNoteText:
  text "Datos Sujeto 02:"
  line "Nombre: Topo."
  cont "Clonacion: Apto."
  para "Anotaciones:"
  line "Parece que todos"
  cont "se asustan al ver"
  cont "su cara."
  cont "Servira como"
  cont "seguridad."
  done

MicoloHideoutSantyNoteText:
  text "Datos Sujeto 03:"
  line "Nombre: Santy."
  cont "Clonacion: Apto."
  para "Anotaciones:"
  line "Parece ser capaz"
  cont "de viajar entre"
  cont "dimensiones."
  cont "Huele a hierba."
  cont "Se requiere mas"
  cont "investigacion."
  done

MicoloHideoutPacoNoteText:
  text "Datos Sujeto 04:"
  line "Nombre: Paco."
  cont "Clonacion: Apto."
  para "Anotaciones:"
  line "El mejor nadador"
  cont "de la region."
  cont "Mientras le de"
  cont "cerveza, estara"
  cont "a mis ordenes."
  done

MicoloHideoutFurryNoteText:
  text "Datos Sujeto 05:"
  line "Nombre: Furry."
  cont "Clonacion: Apto."
  para "Anotaciones:"
  line "Su poder antihack"
  cont "es demasiado"
  cont "poderoso."
  cont "Debe ser"
  cont "investigado."
  done

MicoloHideoutFDEText:
  text "Hay un libro que"
  line "sobresale..."
  para "“FDE, tomo 1."
  line "Firmado por"
  cont "A.VADER.”"
  done



TrainerCloneMewtwo:
  trainer CLONE, MEWTWO_T, EVENT_105, CloneMewtwoSeenText, CloneMewtwoBeatenText, 0, .Script

.Script:
  endifjustbattled
  opentext
  writetext CloneMewtwoAfterText
  waitbutton
  closetext
  end

TrainerOfficerTopo:
  trainer OFFICER, TOPO, EVENT_106, OfficerTopoSeenText, OfficerTopoBeatenText, 0, .Script

.Script:
  endifjustbattled
  opentext
  writetext OfficerTopoAfterText
  waitbutton
  closetext
  end

TrainerScientistAvader:
 trainer SCIENTIST, AVADER, EVENT_107, ScientistAvaderSeenText, ScientistAvaderBeatenText, 0, .Script

.Script:
 endifjustbattled
 opentext
 writetext ScientistAvaderAfterText
 waitbutton
 closetext
 end

TrainerNerdLavender:
  trainer POKEMANIAC, LAVNDER, EVENT_108, NerdLavenderSeenText, NerdLavenderBeatenText, 0, .Script
.Script:
 endifjustbattled
 opentext
 writetext NerdLavenderAfterText
 waitbutton
 closetext
 end

TrainerScientistPhent:
 trainer POKEMANIAC, LAVNDER, EVENT_109, ScientistPhentSeenText, ScientistPhentBeatenText, 0, .Script
.Script:
  endifjustbattled
  opentext
  writetext ScientistPhentAfterText
  waitbutton
  closetext
  end

TrainerSwimmerPacochef:
  trainer SWIMMERM, PACOBEER2, EVENT_10A, SwimmerPacochefSeenText, SwimmerPacochefBeatenText, 0, .Script
.Script:
  endifjustbattled
  opentext
  writetext SwimmerPacochefAfterText
  waitbutton
  closetext
  end

TrainerPsychicSanty:
  trainer PSYCHIC_T, SANTYAGO, EVENT_10B, PsychicSantySeenText, PsychicSantyBeatenText, 0, .Script
.Script:
  endifjustbattled
  opentext
  writetext PsychicSantyAfterText
  waitbutton
  closetext
  end

CloneMewtwoSeenText:
  text "DEBO OBEDECER A"
  line "MICOLO."
  done

CloneMewtwoBeatenText:
  text "NO PUEDO PERDER."
  done

CloneMewtwoAfterText:
  text "MICOLO TE "
  line "DESTRUIRA."
  done

OfficerTopoSeenText:
  text "No puedes pasar."
  done

OfficerTopoBeatenText:
  text "..."
  done

OfficerTopoAfterText:
  text "Has cometido un"
  line "error al venir"
  cont "aqui."
  done

PsychicSantySeenText:
  text "Mi shifteo ha sido"
  line "un exito. Ahora te"
  cont "derrotare y la"
  cont "gloria sera mia."
  done
PsychicSantyBeatenText:
  text "Otra vez?"
  done

PsychicSantyAfterText:
  text "Volvere a shiftear"
  line "hasta que te gane."
  done

SwimmerPacochefSeenText:
  text "MELKOR ha"
  line "desbaneado a"
  cont "LAVNDER..."
  para "Celebremoslo con"
  line "una cerveza."
  done

SwimmerPacochefBeatenText:
  text "Tu tambien quieres"
  line "cerveza?"
  done

SwimmerPacochefAfterText:
  text "Me da igual haber"
  line "perdido, la"
  cont "cerveza no me la"
  cont "quita nadie."
  done

ScientistPhentSeenText:
  text "PHENT TEST SEEN"
  line "PHENT TEST SEEN"
  cont "PHENT TEST SEEN"
  cont "PHENT TEST SEEN"
  cont "PHENT TEST SEEN"
  done
ScientistPhentBeatenText:
  text "PHENT TEST BEAT"
  line "PHENT TEST BEAT"
  cont "PHENT TEST BEAT"
  cont "PHENT TEST BEAT"
  cont "PHENT TEST BEAT"
  done
ScientistPhentAfterText:
  text "PHENT TEST AFTER"
  line "PHENT TEST AFTER"
  cont "PHENT TEST AFTER"
  cont "PHENT TEST AFTER"
  cont "PHENT TEST AFTER"
  done

NerdLavenderSeenText:
  text "Llegas tarde."
  para "MICOLO ya tiene el"
  line "el poder necesario"
  cont "para destruir toda"
  cont "la region."
  para "Hora de vengarse,"
  line "DOOD!"
  done

NerdLavenderBeatenText:
  text "En serio..."
  line "Otra vez?"
  done
NerdLavenderAfterText:
  text "Esto de perder ya"
  line "empieza a cansar."
  done

ScientistAvaderSeenText:
  text "Jeje, MICOLO me ha"
  line "permitido quedarme"
  cont "con los MEW."
  para "Aunque con estos"
  line "nuevos clones de"
  cont "MEWTWO pronto se"
  cont "quedaran atras."
  para "Preparate para"
  line "sentir el poder"
  cont "de FDE."
  done
ScientistAvaderBeatenText:
  text "Estos MEW son"
  line "basura."
  done
ScientistAvaderAfterText:
  text "Mi derrota es"
  line "insignificante."
  para "Con el nuevo poder"
  line "midelar reinaremos"
  cont "sobre la region."
  done

MicoloHideoutMusicPlayer:
  itemball MUSIC_PLAYER

MicoloHideoutSacredAsh:
  itemball SACRED_ASH, 50



MicoloHideout_MapEvents:
  db 0, 0 ; filler

  db 2 ; warp events
  warp_event 3, 2, PLAYERS_HOUSE_1F, 1
  warp_event 15, 36, MICOLO_HIDEOUT_BASEMENT, 1

  db 0 ; coord events

  db 38 ; bg events
  ; PCs
  ; PC 1
  bg_event 2, 10, BGEVENT_UP, MicoloHideoutPC1Script
  bg_event 3, 10, BGEVENT_UP, MicoloHideoutPC1Script
  ; PC 2
  bg_event 10, 10, BGEVENT_UP, MicoloHideoutPC2Script
  bg_event 11, 10, BGEVENT_UP, MicoloHideoutPC2Script
  ; PC 3
  bg_event 24, 10, BGEVENT_UP, MicoloHideoutPC3Script
  bg_event 25, 10, BGEVENT_UP, MicoloHideoutPC3Script
  ; PC 4
  bg_event 10, 14, BGEVENT_UP, MicoloHideoutPC4Script
  bg_event 11, 14, BGEVENT_UP, MicoloHideoutPC4Script
  ; PC 5
  bg_event 12, 14, BGEVENT_UP, MicoloHideoutPC5Script
  bg_event 13, 14, BGEVENT_UP, MicoloHideoutPC5Script
  ; PC 6
  bg_event 32, 20, BGEVENT_UP, MicoloHideoutPC6Script
  bg_event 33, 20, BGEVENT_UP, MicoloHideoutPC6Script
  ; PC 7
  bg_event 12, 36, BGEVENT_UP, MicoloHideoutPC7Script
  bg_event 13, 36, BGEVENT_UP, MicoloHideoutPC7Script

  ; Bookshelves
  ; Bookshelf 1
  bg_event 27, 9, BGEVENT_READ, MicoloHideoutFDEScript
  ; Bookshelf 2
  bg_event 30, 9, BGEVENT_READ, MicoloHideoutFDEScript
  ; Bookshelves 3-8
  bg_event 2, 21, BGEVENT_READ, MicoloHideoutFDEScript
  bg_event 3, 21, BGEVENT_READ, MicoloHideoutFDEScript
  bg_event 4, 21, BGEVENT_READ, MicoloHideoutFDEScript
  bg_event 5, 21, BGEVENT_READ, MicoloHideoutFDEScript
  bg_event 6, 21, BGEVENT_READ, MicoloHideoutFDEScript
  bg_event 7, 21, BGEVENT_READ, MicoloHideoutFDEScript

  ; Bookshelves 9-12
  bg_event 24, 31, BGEVENT_READ, MicoloHideoutJournal1Script
  bg_event 25, 31, BGEVENT_READ, MicoloHideoutJournal2Script
  bg_event 26, 31, BGEVENT_READ, MicoloHideoutJournal3Script
  bg_event 27, 31, BGEVENT_READ, MicoloHideoutNote1Script

  ; Bookshelves 13-18
  bg_event 30, 31, BGEVENT_READ, MicoloHideoutNote2Script
  bg_event 31, 31, BGEVENT_READ, MicoloHideoutGoldyNoteScript
  bg_event 32, 31, BGEVENT_READ, MicoloHideoutTopoNoteScript
  bg_event 33, 31, BGEVENT_READ, MicoloHideoutSantyNoteScript
  bg_event 34, 31, BGEVENT_READ, MicoloHideoutPacoNoteScript
  bg_event 35, 31, BGEVENT_READ, MicoloHideoutFurryNoteScript

  ; Bookshelves 19-24
  bg_event 30, 35, BGEVENT_READ, MicoloHideoutNote2Script
  bg_event 31, 35, BGEVENT_READ, MicoloHideoutGoldyNoteScript
  bg_event 32, 35, BGEVENT_READ, MicoloHideoutTopoNoteScript
  bg_event 33, 35, BGEVENT_READ, MicoloHideoutSantyNoteScript
  bg_event 34, 35, BGEVENT_READ, MicoloHideoutPacoNoteScript
  bg_event 35, 35, BGEVENT_READ, MicoloHideoutFurryNoteScript

  db 9 ; object events
  object_event  10,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN,   0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 6, TrainerOfficerTopo, -1
  object_event  11, 33, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerNerdLavender, -1
  object_event  11, 36, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerScientistAvader, -1
  object_event  27, 29, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerScientistPhent, -1
  object_event  30, 29, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerSwimmerPacochef, -1
  object_event  21, 11, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 6, TrainerPsychicSanty, -1
  object_event  16, 11, SPRITE_MONSTER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 6, TrainerCloneMewtwo, -1
  object_event  27,  13, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MicoloHideoutMusicPlayer, EVENT_10C
  object_event  26,  34, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, MicoloHideoutSacredAsh, EVENT_10D
