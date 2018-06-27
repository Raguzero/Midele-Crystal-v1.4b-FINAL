GetBadgeLevel::
	; outputs b = badgeLevel
	push af
	push bc
	push de
	push hl
	ld hl, wJohtoBadges ; JohtoBadges
	ld b, 2
	call CountSetBits
	ld e, a
	ld d, 0
	ld hl, BadgeLevelTable ; badgeLevelTable
	add hl, de
	ld a, [hl]
	pop hl
	pop de
	pop bc
	ld b, a
	pop af
	ret

BadgeLevelTable: ; 3fef
	db $14 ; 0 badges, level 20
	db $1e ; 1 badge, level 30
	db $1e ; 2 badges, level 30
	db $23 ; 3 badges, level 35
	db $28 ; 4 badges, level 40
	db $2d ; 5 badges, level 45
	db $32 ; 6 badges, level 50
	db $37 ; 7 badges, level 55
	db $4b ; 8 badges, level 75
	db $50 ; 9 badges, level 80
	db $55 ; 10 badges, level 85
	db $55 ; 11 badges, level 85
	db $55 ; 12 badges, level 85
	db $5a ; 13 badges, level 90
	db $64 ; 14 badges, level 100
	db $64 ; 15 badges, level 100
	db $64 ; 16 badges, level 100
