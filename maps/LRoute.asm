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
	print "L Route; Right: Starter City"
; 0x1a834d

LRoute_MapEventHeader: ; 
	; filler
	db 0, 0

	; warps
	db 2
	warp_def $10, $21, 0, GROUP_STARTERCITY, MAP_STARTERCITY
	warp_def $11, $21, 1, GROUP_STARTERCITY, MAP_STARTERCITY

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 8, 8, $0, LRouteSignpostScript

	; people-events
    db 4

	; spr y x facing movement hour daytime function sight pointer bit
	person_event $54, $0e+4, $0a+4, $1, $0, 255, 255, $1, 0, LRoutePotion, $0450
	;person_event $3e, $17+4, $0c+4, $0, $0, 255, 255, $0, 0, LRouteRandomPerson, $ffff
	;person_event $9,  $20+4, $0e+4, $0, $0, 255, 255, $0, 0, LRouteRandomPerson2, $ffff 
	
	person_event $99, $08+4, $12+4, $16, $0, 255, 255, $0, 0, $0, $ffff
	person_event $99, $09+4, $13+4, $16, $0, 255, 255, $0, 0, $0, $ffff
	person_event $33, $10+4, $12+4, $16, $0, 255, 255, $0, 0, LRouteRandomPerson, $ffff
	;person_event $99, 16, 7, $16, $0, 255, 255, $0, 0, UnknownScript_0x1a5af5, $ffff
	;person_event $99, 16, 7, $16, $0, 255, 255, $0, 0, UnknownScript_0x1a5af5, $ffff

LRoutePotion:
	db POTION, 1
	
LRouteRandomPerson:
	jumptextfaceplayer LRouteRandomPersonText

LRouteRandomPersonText:
    print "There is a Miltank farm here."

LRouteRandomPerson2:
	jumptextfaceplayer RandomPersonText

LRouteRandomPerson2Text:
    print "Blah blah"

