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
	warp_def 29, 15, 1, GROUP_MEADOW, MAP_MEADOW

	; xy triggers
	db 0

	; signposts
	db 0

	; people-events
	db 2
	; spr y x facing movement hour daytime function sight pointer bit
	person_event $54, 8, 8, $1, $0, 255, 255, $1, 0, ThirdCaveGreatBall, $065a
	person_event $2d+8, $3+4, $f+4, $9, $0, 255, 255, $0, 0, ThirdCaveRocketScript, $ffff

ThirdCaveGreatBall:
	db GREAT_BALL, 5

ThirdCaveRocketScript:
	faceplayer
	loadfont
	checkbit1 $0501
	iftrue .notstolen
	2writetext ThirdCaveRocketText1
	closetext
	checkbit1 $0500
	iftrue .aware
	; player is unaware
	loadmovesprites
	end

.aware
	2writetext ThirdCaveRocketText2
	closetext
	
	loadmovesprites
	winlosstext ThirdCaveRocketTextDefeat, $0000
	loadtrainer GRUNTM, 1
	startbattle
	returnafterbattle
	loadfont
	
	2writetext ThirdCaveRocketText3
	closetext
	verbosegiveitem BACKPACK, 1
	setbit1 $0501
	;closetext
	loadmovesprites
	end
    
.notstolen
	2writetext ThirdCaveRocketText4
	closetext
	loadmovesprites
	end


ThirdCaveRocketText1:
    print "Yeah, yeah. What are you looking at?"
 
ThirdCaveRocketText2:
    print "Oh, you mean this backpack? So you want to get it for that old guy, huh? Well, only if you can defeat me!"
    
ThirdCaveRocketTextDefeat:
    print "Welp..."

ThirdCaveRocketText3:
    print "Pff, fine. You can have it."

ThirdCaveRocketText4:
    print "I haven't stolen anything now!"
