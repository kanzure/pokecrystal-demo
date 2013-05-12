WaterChuteWay_MapScriptHeader:
	; trigger count
	db 0

	; triggers

	; callback count
	db 0

	; callbacks

WaterChuteWay_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 1

	; cave, feel free to warp somewhere useful
	warp_def 37, 3, GROUP_ELMS_LAB, MAP_ELMS_LAB

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 36, 4, $0, WaterChuteWaySignpost0Script

	; people-events
	db 0

WaterChuteWaySignpost0Script:
	jumptext WaterChuteWaySignpost0Text

WaterChuteWaySignpost0Text:
	print "There is nothing interesting in here. Go away."

