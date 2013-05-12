KrissHouse2F_MapScriptHeader: ; 0x7abab
	; trigger count
	db 0

	; callback count
	db 2

	; callbacks

	dbw 5, UnknownScript_0x7abb4

	dbw 1, UnknownScript_0x7abc5
; 0x7abb3

UnknownScript_0x7abb3: ; 0x7abb3
	end
; 0x7abb4

UnknownScript_0x7abb4: ; 0x7abb4
	special $004a
	setbit1 $0007
	checkbit1 $0036
	iftrue UnknownScript_0x7abc4
	jumpstd $0018
	return
; 0x7abc4

UnknownScript_0x7abc4: ; 0x7abc4
	return
; 0x7abc5

UnknownScript_0x7abc5: ; 0x7abc5
	special $0049
	return
; 0x7abc9


	db 0, 0, 0 ; filler


UnknownScript_0x7abcc: ; 0x7abcc
	describedecoration $1
; 0x7abce

UnknownScript_0x7abce: ; 0x7abce
	describedecoration $2
; 0x7abd0

UnknownScript_0x7abd0: ; 0x7abd0
	describedecoration $3
; 0x7abd2

UnknownScript_0x7abd2: ; 0x7abd2
	describedecoration $4
; 0x7abd4

MapKrissHouse2FSignpost4: ; 0x7abd4
	dw $02cc ; bit1
	dw MapKrissHouse2FSignpost4Script
; 0x7abd8

MapKrissHouse2FSignpost4Script: ; 0x7abd8
	describedecoration $0
; 0x7abda

MapKrissHouse2FSignpost2Script: ; 0x7abda
	checkbit1 $001a
	iftrue UnknownScript_0x7ac07
	checkbit1 $0325
	iftrue UnknownScript_0x7ac0a
	playmusic $001d
	loadfont
	2writetext UnknownText_0x7ac24
	pause 45
	2writetext UnknownText_0x7ac55
	pause 45
	2writetext UnknownText_0x7ac64
	pause 45
	musicfadeout $003c, $10
	2writetext UnknownText_0x7ac84
	pause 45
	loadmovesprites
	setbit1 $0325
	end
; 0x7ac07

UnknownScript_0x7ac07: ; 0x7ac07
	jumpstd $000b
; 0x7ac0a

UnknownScript_0x7ac0a: ; 0x7ac0a
	loadfont
	2writetext UnknownText_0x7ac84
	pause 45
	loadmovesprites
	end
; 0x7ac12


MapKrissHouse2FSignpost3Script: ; 0x7ac12
	jumpstd $0002
; 0x7ac15

MapKrissHouse2FSignpost0Script: ; 0x7ac15
	loadfont
	special $001d
	iftrue UnknownScript_0x7ac1e
	loadmovesprites
	end
; 0x7ac1e

UnknownScript_0x7ac1e: ; 0x7ac1e
	warp 0, 0, $0, $0
	end
; 0x7ac24

UnknownText_0x7ac24: ; 0x7ac24
	db $0, "PROF.OAK'S #MON", $4f
	db "TALK! Please tune", $55
	db "in next time!", $57
; 0x7ac55

UnknownText_0x7ac55: ; 0x7ac55
	db $0, "#MON CHANNEL!", $57
; 0x7ac64

UnknownText_0x7ac64: ; 0x7ac64
	db $0, "This is DJ MARY,", $4f
	db "your co-host!", $57
; 0x7ac84

UnknownText_0x7ac84: ; 0x7ac84
	db $0, "#MON!", $4f
	db "#MON CHANNEL…", $57
; 0x7ac99

KrissHouse2F_MapEventHeader: ; 0x7ac99
	; filler
	db 0, 0

	; warps
	db 1

;	warp_def 0, 7, 1, GROUP_WATERCHUTEWAY, MAP_WATERCHUTEWAY
;	warp_def 0, 7, 1, GROUP_THIRDCAVE, MAP_THIRDCAVE
	warp_def 0, 7, 1, GROUP_SPIRALFOREST, MAP_SPIRALFOREST
;	warp_def $0, $7, 3, GROUP_KRISS_HOUSE_1F, MAP_KRISS_HOUSE_1F

	; xy triggers
	db 0

	; signposts
	db 4
	signpost 1, 2, $1, MapKrissHouse2FSignpost0Script
	signpost 1, 3, $0, MapKrissHouse2FSignpost2Script
	signpost 1, 5, $0, MapKrissHouse2FSignpost3Script
	signpost 0, 6, $5, MapKrissHouse2FSignpost4 ; 6bd4

	; people-events
	db 4
	person_event $f0, 6, 8, $1, $0, 255, 255, $0, 0, UnknownScript_0x7abd2, $0741
	person_event $f1, 8, 8, $1, $0, 255, 255, $0, 0, UnknownScript_0x7abcc, $0742
	person_event $f2, 8, 9, $1, $0, 255, 255, $0, 0, UnknownScript_0x7abce, $0743
	person_event $f3, 5, 4, $21, $0, 255, 255, $0, 0, UnknownScript_0x7abd0, $0744
; 0x7acec

