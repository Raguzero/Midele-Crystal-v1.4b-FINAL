mon_prob: MACRO
; percent, index
	db \1, \2 * 2
ENDM

GrassMonProbTable: ; 2a1cb
	mon_prob 30,  0 ; 30% chance
	mon_prob 60,  1 ; 30% chance
	mon_prob 80,  2 ; 20% chance
	mon_prob 90,  3 ; 10% chance
	mon_prob 95,  4 ;  5% chance
	mon_prob 99,  5 ;  4% chance
	mon_prob 100, 6 ;  1% chance
; 2a1d9

WaterMonProbTable: ; 2a1d9
	mon_prob 60,  0 ; 60% chance
	mon_prob 90,  1 ; 30% chance
	mon_prob 100, 2 ; 10% chance
; 2a1df

MaxLevelGrass:
	db 2
	db 3
	db 0
	db 2
	db 1
	db 2
	db 3

MaxLevelWater:
	db 2
	db 3
	db 4
