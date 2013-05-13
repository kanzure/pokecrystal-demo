DebugMap_MapScriptHeader:
	; trigger count
	db 0

	; triggers

	; callback count
	db 0

	; callbacks

DebugMap_MapEventHeader:
	; filler
	db 0, 0

	; warps
	db 1

	; cave, feel free to warp somewhere useful
	warp_def 5, 19, 1, GROUP_ELMS_LAB, MAP_ELMS_LAB

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 11, 5, $0, DebugMapSignpost0Script

	; people-events
	db 0

DebugMapSignpost0Script:
	jumptext DebugMapSignpost0Text

DebugMapSignpost0Text:
	print "These houses are lonely without maps."

