CloneMon:
  ld hl, .CloneIntroText
  call PrintText
  ld a, [wPartyCount]
  inc a
  cp PARTY_LENGTH + 1
  jr nc, .party_full
  ld hl, .CloneChooseText
  call PrintText
  call JoyWaitAorB
  farcall SelectMonFromParty
  jr c, .clone_declined
  call CloneCurPartyMon

  ld hl, .CloneCompletedText
  call PrintText
  call JoyWaitAorB
  ret

.party_full
  ld hl, .ClonePartyFullText
  call PrintText
  call JoyWaitAorB
  ret

.clone_declined
  ld hl, .CloneDeclinedText
  call PrintText
  call JoyWaitAorB
  ret

.CloneIntroText:
  text "Iniciado sistema"
  line "de clonacion de"
  cont "#MON."
  prompt

.CloneChooseText:
  text "Elija un #MON"
  line "para ser clonado."
  done

.CloneDeclinedText:
  text "Sistema de"
  line "clonacion"
  cont "cancelado."
  done

.CloneCompletedText:
  text "#MON clonado"
  line "con exito."
  done

.ClonePartyFullText:
  text "Your #MON party"
  line "is full."
  done

; Clones wCurPartyMon
CloneCurPartyMon:
  ; Copy main mon data
  ; Save mon to clone in hl
  ld a, [wCurPartyMon]
  ld hl, wPartyMon1
  ld bc, PARTYMON_STRUCT_LENGTH
  call AddNTimes
  push hl

  ; Save mon destination in de
  ld a, [wPartyCount]
  ld hl, wPartyMon1
  ld bc, PARTYMON_STRUCT_LENGTH
  call AddNTimes
  ld d, h
  ld e, l

  ; Copy mon to clone in hl to mon destination in de
  pop hl
  call CopyBytes

  ; Copy mon to clone species
  ld a, [wPartyCount]
  ld hl, wPartySpecies
  ld b, 0
  ld c, a
  add hl, bc
  ld a, [wCurPartySpecies]
  ld [hl], a

  ; Copy mon to clone OT
  ; Save mon to clone OT in hl
  ld a, [wCurPartyMon]
  ld hl, wPartyMonOT
  ld bc, NAME_LENGTH
  call AddNTimes
  push hl

  ; Save mon destination OT in de
  ld a, [wPartyCount]
  ld hl, wPartyMonOT
  ld bc, NAME_LENGTH
  call AddNTimes
  ld d, h
  ld e, l

  ; Copy mon to clone OT in hl to mon destination OT in de
  pop hl
  call CopyBytes

  ; Copy mon to clone nickname
  ; Save mon to clone nickname in hl
  ld a, [wCurPartyMon]
  ld hl, wPartyMonNicknames
  ld bc, MON_NAME_LENGTH
  call AddNTimes
  push hl

  ; Save mon destination nickname in de
  ld a, [wPartyCount]
  ld hl, wPartyMonNicknames
  ld bc, MON_NAME_LENGTH
  call AddNTimes
  ld d, h
  ld e, l

  ; Copy mon to clone nickname in hl to mon destination nickname in de
  pop hl
  call CopyBytes

  ; Increment party count
  ld hl, wPartyCount
  inc [hl]

  ret
