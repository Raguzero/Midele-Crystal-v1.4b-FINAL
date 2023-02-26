FRUIT_TREE_3_MIN EQU 3
FRUIT_TREE_4     EQU 4
FRUIT_TREE_5_MAX EQU 5

FruitTreeScript:: ; 44000
	callasm GetCurTreeFruit
	opentext
	copybytetovar wCurFruit
	itemtotext USE_SCRIPT_VAR, MEM_BUFFER_0
	writetext FruitBearingTreeText
	buttonsound
	callasm TryResetFruitTrees
	callasm CheckFruitTree
	iffalse .fruit
	writetext NothingHereText
	waitbutton
	jump .end

.fruit
	farwritetext _HeyItsFruitText
	callasm GetFruitTreeCount
	ifequal FRUIT_TREE_3_MIN, .try_three
	ifequal FRUIT_TREE_4, .try_four
	; only possible value left it could be is FRUIT_TREE_5_MAX
	copybytetovar wCurFruit
	giveitem ITEM_FROM_MEM, $5
	iffalse .try_four
	buttonsound
	writetext ObtainedFiveFruitText
	jump .continue
.try_four
	copybytetovar wCurFruit
	giveitem ITEM_FROM_MEM, $4
	iffalse .try_three
	buttonsound
	writetext ObtainedFourFruitText
	jump .continue
.try_three
	copybytetovar wCurFruit
	giveitem ITEM_FROM_MEM, $3
	iffalse .try_two
	buttonsound
	writetext ObtainedThreeFruitText
	jump .continue
.try_two
; if you somehow approach the limit of number of a single berry
; and 3-5 will not fit in the bag but 2 will, it prints the "bag is full" text to let you know
; but still gives you the 2 berry too
; if 2 still wont fit, try 1
	copybytetovar wCurFruit
	giveitem ITEM_FROM_MEM, $2
	iffalse .try_one
	buttonsound
	writetext FruitPackIsFullText
	buttonsound
	writetext ObtainedTwoFruitText
	jump .continue
.try_one
; if you somehow approach the limit of number of a single berry
; and 3-5 will not fit in the bag but 1 will, it prints the "bag is full" text to let you know
; but still gives you the 1 berry too
; if not even one berry will fit, print "bag is full text" and do not print ObtainedFruitText 
	copybytetovar wCurFruit
	giveitem ITEM_FROM_MEM
	iffalse .packisfull
	buttonsound
	writetext FruitPackIsFullText
	buttonsound
	writetext ObtainedFruitText
.continue
	callasm PickedFruitTree
	specialsound
	itemnotify
	jump .end

.packisfull
	buttonsound
	writetext FruitPackIsFullText
	waitbutton

.end
	closetext
	end
; 44041

GetFruitTreeCount:
; RandomRange returns a random number between 0 and 2
; the range is in a, not inclusive
; We want a possible range of 3-5 so we add 3 after
	ld a, 3
	call RandomRange
	add 3
	ld [wScriptVar], a
	ret

GetCurTreeFruit: ; 44041
	ld a, [wCurFruitTree]
	dec a
	call GetFruitTreeItem
	ld [wCurFruit], a
	ret
; 4404c

TryResetFruitTrees: ; 4404c
	ld hl, wDailyFlags
	bit DAILYFLAGS_ALL_FRUIT_TREES_F, [hl]
	ret nz
	jp ResetFruitTrees
; 44055

CheckFruitTree: ; 44055
	ld b, 2
	call GetFruitTreeFlag
	ld a, c
	ld [wScriptVar], a
	ret
; 4405f

PickedFruitTree: ; 4405f
	farcall StubbedTrainerRankings_FruitPicked
	ld b, 1
	jp GetFruitTreeFlag
; 4406a

ResetFruitTrees: ; 4406a
	xor a
	ld hl, wFruitTreeFlags
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hl], a
	ld hl, wDailyFlags
	set DAILYFLAGS_ALL_FRUIT_TREES_F, [hl]
	ret
; 44078

GetFruitTreeFlag: ; 44078
	push hl
	push de
	ld a, [wCurFruitTree]
	dec a
	ld e, a
	ld d, 0
	ld hl, wFruitTreeFlags
	call FlagAction
	pop de
	pop hl
	ret
; 4408a

GetFruitTreeItem: ; 4408a
	push hl
	push de
	ld e, a
	ld d, 0
	ld hl, FruitTreeItems
	add hl, de
	ld a, [hl]
	pop de
	pop hl
	ret
; 44097


INCLUDE "data/items/fruit_trees.asm"


FruitBearingTreeText: ; 440b5
	text_jump _FruitBearingTreeText
	db "@"
; 440ba

HeyItsFruitText: ; 440ba
	text_jump _HeyItsFruitText
	db "@"
; 440bf

ObtainedFruitText: ; 440bf
	text_jump _ObtainedFruitText
	db "@"
; 440c4

ObtainedTwoFruitText:
	text_jump _ObtainedTwoFruitText
	db "@"

ObtainedThreeFruitText:
	text_jump _ObtainedThreeFruitText
	db "@"

ObtainedFourFruitText:
	text_jump _ObtainedFourFruitText
	db "@"

ObtainedFiveFruitText:
	text_jump _ObtainedFiveFruitText
	db "@"

FruitPackIsFullText: ; 440c4
	text_jump _FruitPackIsFullText
	db "@"
; 440c9

NothingHereText: ; 440c9
	text_jump _NothingHereText
	db "@"
; 440ce
