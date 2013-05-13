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
	db 2
	warp_def $14, $04, 1, GROUP_LROUTE, MAP_LROUTE
	warp_def $15, $04, 2, GROUP_LROUTE, MAP_LROUTE
	
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
	db 0
	; person_event $29, 12, 7, $2, $22, 255, 255, $0, 0, UnknownScript_0x1ac6d5, $ffff
	; person_event $3a, 18, 16, $5, $2, 255, 255, $a0, 0, UnknownScript_0x1ac6d8, $ffff
; 0x1ac812

