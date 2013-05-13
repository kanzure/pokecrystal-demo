SpiralForest_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

SpiralForest_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 7

	; cave entrance/exit in middle
	warp_def 21, 20, 1, GROUP_THIRDCAVE, MAP_THIRDCAVE

	; These are grass warps, so feel free to remove the warps and just use
	; connections.

	; top middle (left tile)
	warp_def 0, 22, 1, GROUP_KRISS_HOUSE_2F, MAP_KRISS_HOUSE_2F

; top middle (right tile)
	warp_def 0, 23, 1, GROUP_KRISS_HOUSE_2F, MAP_KRISS_HOUSE_2F

	; bottom left (top tile)
	warp_def 36, 0, 1, GROUP_THIRDCAVE, MAP_THIRDCAVE

	; bottom left (bottom tile)
	warp_def 37,  0, 1, GROUP_THIRDCAVE, MAP_THIRDCAVE

	; bottom right (top tile)
	warp_def 36, 39, 1, GROUP_MEADOW, MAP_MEADOW

	; bottom right (bottom tile)
	warp_def 37, 39, 1, GROUP_THIRDCAVE, MAP_THIRDCAVE

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 0

