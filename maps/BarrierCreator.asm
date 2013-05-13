BarrierCreator_MapScriptHeader:
	; trigger count
	db 0

	; callback count
	db 0

BarrierCreator_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 1

	; house (x=5, y=7)
	warp_def 7, 5, 1, GROUP_KRISS_HOUSE_2F, MAP_KRISS_HOUSE_2F

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 0

