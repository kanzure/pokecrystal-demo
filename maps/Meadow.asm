Meadow_MapScriptHeader: ; 
	; trigger count
	db 0

	; triggers

	; callback count
	db 0

	; callbacks

; 0x1a800d

MapMeadowSignpost0Script: ;
	jumptext MeadowSignpost
; 0x1a80cb

MeadowSignpost: 
	print "White Meadow"
; 0x1a834d

Meadow_MapEventHeader: ; 
	; filler
	db 0, 0

	; warps
	db 1
	warp_def $d, $e, 1, GROUP_THIRDCAVE, MAP_THIRDCAVE

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 8, 8, $0, MapMeadowSignpost0Script

	; people-events
    db 1

	person_event $54, 8, 8, $1, $0, 255, 255, $1, 0, MeadowSuperPotion, $065a

MeadowSuperPotion:
	db SUPER_POTION, 5
