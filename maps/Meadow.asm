Meadow_MapScriptHeader: ; 
	; trigger count
	db 0

	; triggers

	; callback count
	db 0

	; callbacks

; 0x1a800d

MapMeadowSignpost0Script: ;
	jumptext MeadowSignpost
; 0x1a80cb

MeadowSignpost: 
	print "White Meadow"
; 0x1a834d

Meadow_MapEventHeader: ; 
	; filler
	db 0, 0

	; warps
	db 1
	warp_def $d, $e, 3, GROUP_THIRDCAVE, MAP_THIRDCAVE

	; xy triggers
	db 0

	; signposts
	db 1
	signpost 8, 8, $0, MapMeadowSignpost0Script

	; people-events
    db 3

	; spr y x facing movement hour daytime function sight pointer bit
	person_event $54, $10+4, $15+4, $1, $0, 255, 255, $1, 0, MeadowSuperPotion, $065b
	person_event $3e, $17+4, $0c+4, $0, $0, 255, 255, $0, 0, MeadowRandomPerson, $ffff
	person_event $9,  $20+4, $0e+4, $0, $0, 255, 255, $0, 0, MeadowRandomPerson2, $ffff

MeadowSuperPotion:
	db SUPER_POTION, 5
	
MeadowRandomPerson:
	jumptextfaceplayer RandomPersonText

RandomPersonText:
    print "I've been looking for a very rare Pokémon for the past hour...  It should be around here somewhere."

MeadowRandomPerson2:
	faceplayer
	loadfont
	setbit1 $0500
	checkbit1 $0502
	iftrue .goteevee
	checkbit1 $0501
	iftrue .broughtback
	; didn't
	2writetext MeadowRandomPerson2Text
	closetext
	loadmovesprites
	end
.broughtback
	takeitem BACKPACK, 1
	setbit1 $0502
	2writetext MeadowRandomPerson2Text2
	closetext
	2writetext MeadowReceivedEeveeText
	playsound $0002
	waitbutton
	keeptextopen
	givepoke EEVEE, 5, BERRY, 0
	;closetext
	loadmovesprites
	end
.goteevee
	2writetext MeadowRandomPerson2Text3
	closetext
	loadmovesprites
	end

MeadowRandomPerson2Text:
    print "Oh no!  I was in that cave over there when somebody stole my backpack!  I can't really go back and challenge them..  Oh, what will I do?"

MeadowRandomPerson2Text2:
    print "Golly, you got it for me? That's so kind of you. To express my gratitude, you can have this Eevee... I'm sure it would appreciate being with an energetic trainer such as you!"

MeadowReceivedEeveeText:
    print "Received Eevee!"

MeadowRandomPerson2Text3:
    print "How is that Eevee I gave you doing? Maybe you should evolve it!"
