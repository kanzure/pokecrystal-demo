TickleWoods_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

	; Connection blocks (x, y): (0, 6), (19, 3), (10, 19), (11, 19)
TickleWoods_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 1

	; cottage (x=33, y=13)
	warp_def 13, 33, 1, GROUP_KRISS_HOUSE_2F, MAP_KRISS_HOUSE_2F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 0

