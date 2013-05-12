ThirdCave_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

ThirdCave_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 3

	; top left
	warp_def 1, 5, 1, GROUP_KRISS_HOUSE_2F, MAP_KRISS_HOUSE_2F

	; top right
	warp_def 1, 11, 1, GROUP_MEADOW, MAP_MEADOW

	; bottom
	warp_def 30, 15, 1, GROUP_KRISS_HOUSE_2F, MAP_KRISS_HOUSE_2F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 1
	person_event $54, 8, 8, $1, $0, 255, 255, $1, 0, ThirdCaveGreatBall, $065a

ThirdCaveGreatBall:
	db GREAT_BALL, 5
