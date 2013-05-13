StarterCityIndoors_MapScriptHeader: ; 
	; trigger count
	db 0

	; triggers

	; callback count
	db 0

	; callbacks

StarterCityIndoors_MapEventHeader: ; 
	; filler
	db 0, 0

	; warps
	db 6
	warp_def $05, $04, 3, GROUP_STARTERCITY, MAP_STARTERCITY
	warp_def $05, $05, 3, GROUP_STARTERCITY, MAP_STARTERCITY
	
	warp_def $09,  26, 4, GROUP_STARTERCITY, MAP_STARTERCITY
	warp_def $09,  27, 4, GROUP_STARTERCITY, MAP_STARTERCITY
	
	warp_def  23, $04, 5, GROUP_STARTERCITY, MAP_STARTERCITY
	warp_def  23, $05, 5, GROUP_STARTERCITY, MAP_STARTERCITY

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
    db 4
	; spr y x facing movement hour daytime function sight pointer bit
	person_event $24, $01+4, $07+4, $0, $0, 255, 255, $0, 0, StarterCityIndoorsPerson1, $ffff
	person_event $25, $03+4, $00+4, $0, $0, 255, 255, $0, 0, StarterCityIndoorsPerson2, $ffff
	person_event $26, $02+4, $1b+4, $0, $0, 255, 255, $0, 0, StarterCityIndoorsPerson3, $ffff
	person_event $27, $12+4, $03+4, $0, $0, 255, 255, $0, 0, StarterCityIndoorsPerson4, $ffff



StarterCityIndoorsPerson1:
	jumptextfaceplayer StarterCityIndoorsPerson1Text

StarterCityIndoorsPerson1Text:
    print "Huh? I'm just blocking off this Town Map. Don't ask why..."

StarterCityIndoorsPerson2:
	jumptextfaceplayer StarterCityIndoorsPerson2Text

StarterCityIndoorsPerson2Text:
    print "I like tea."

StarterCityIndoorsPerson3:
	jumptextfaceplayer StarterCityIndoorsPerson3Text

StarterCityIndoorsPerson3Text:
    print "This is a library. Please be quiet."

StarterCityIndoorsPerson4:
	jumptextfaceplayer StarterCityIndoorsPerson4Text

StarterCityIndoorsPerson4Text:
    print "I was supposed to have some peope come over for a sweet party, but nobody seems to be coming... Wonder what's up."
