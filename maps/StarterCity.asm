StarterCity_MapScriptHeader: ; 0x1ac6cc
	; trigger count
	db 0

	; callback count
	db 0

	; callbacks

	; dbw 5, UnknownScript_0x1ac6d1
; 0x1ac6d1


StarterCity_MapEventHeader: ; 0x1ac7cf
	; filler
	db 0, 0

	; warps
	db 5
	warp_def $14, $04, 1, GROUP_LROUTE, MAP_LROUTE
	warp_def $15, $04, 2, GROUP_LROUTE, MAP_LROUTE
	
	; top right house
	warp_def $09, $1b, 1, GROUP_STARTERCITYINDOORS, MAP_STARTERCITYINDOORS
	; middle right house
	warp_def $15, $1b, 3, GROUP_STARTERCITYINDOORS, MAP_STARTERCITYINDOORS
	; bottom right house
	warp_def $1d, $1b, 5, GROUP_STARTERCITYINDOORS, MAP_STARTERCITYINDOORS
	
	; warp_def $5, $5, 1, GROUP_REDS_HOUSE_1F, MAP_REDS_HOUSE_1F
	; warp_def $5, $d, 1, GROUP_BLUES_HOUSE, MAP_BLUES_HOUSE
	; warp_def $b, $c, 1, GROUP_OAKS_LAB, MAP_OAKS_LAB

	; xy triggers
	db 0

	; signposts
	db 0
	; signpost 9, 7, $0, MapPalletTownSignpost0Script
	; signpost 5, 3, $0, MapPalletTownSignpost1Script
	; signpost 13, 13, $0, MapPalletTownSignpost2Script
	; signpost 5, 11, $0, MapPalletTownSignpost3Script

	; people-events
	db 2
	; spr y x facing movement hour daytime function sight pointer bit
	person_event $28, $08+4, $12+4, $0, $22, 255, 255, $0, 0, StarterCityPerson1, $ffff
	person_event $2a, $10+4, $0b+4, $0, $22, 255, 255, $0, 0, StarterCityPerson2, $ffff


StarterCityPerson1:
	jumptextfaceplayer StarterCityPerson1Text

StarterCityPerson1Text:
    print "The Gym is closed. Go play somewhere else! Like the Meadow. Hint hint."

StarterCityPerson2:
	jumptextfaceplayer StarterCityPerson2Text

StarterCityPerson2Text:
    print "This Pokécenter is closed until tyrons maps it. Stay tuned!"
