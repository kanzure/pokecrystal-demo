LRoute_MapScriptHeader: ; 
	; trigger count
	db 0

	; triggers

	; callback count
	db 0

	; callbacks

; 0x1a800d

LRouteSignpostScript: ;
	jumptext LRouteSignpost
; 0x1a80cb

LRouteSignpost: 
	print "L Route         -> Starter City"
; 0x1a834d

Meadow_MapEventHeader: ; 
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $d, $e, 3, GROUP_STARTERCITY, MAP_STARTERCITY
	warp_def $d, $e, 3, GROUP_STARTERCITY, MAP_STARTERCITY

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 8, 8, $0, LRouteSignpostScript

	; people-events
    db 3

	; spr y x facing movement hour daytime function sight pointer bit
	person_event $54, $10+4, $15+4, $1, $0, 255, 255, $1, 0, LRoutePotion, $0450
	person_event $3e, $17+4, $0c+4, $0, $0, 255, 255, $0, 0, LRouteRandomPerson, $ffff
	person_event $9,  $20+4, $0e+4, $0, $0, 255, 255, $0, 0, LRouteRandomPerson2, $ffff

LRoutePotion:
	db POTION, 1
	
LRouteRandomPerson:
	jumptextfaceplayer RandomPersonText

LRouteRandomPersonText:
    print "Blah blah"

LRouteRandom2Person:
	jumptextfaceplayer RandomPersonText

LRouteRandomPerson2Text:
    print "Blah blah"

