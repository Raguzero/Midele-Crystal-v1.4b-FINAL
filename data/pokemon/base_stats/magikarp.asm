	db MAGIKARP ; 129

	db  20,  10,  55,  80,  15,  20
	;   hp  atk  def  spd  sat  sdf

	db WATER, WATER ; type
	db 255 ; catch rate
	db 20 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
; Delete to save space
	db 1 ; step cycles to hatch
; Delete to save space
	INCBIN "gfx/pokemon/magikarp/front.dimensions"
; Delete to save space
	db GROWTH_SLOW ; growth rate
	dn EGG_FISH, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm
	; end
