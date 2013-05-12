.SUFFIXES: .asm .tx .o .gbc .png .2bpp .lz

TEXTFILES = \
		text/sweethoney.tx \
		text/phone/bill.tx \
		text/phone/elm.tx \
		text/phone/mom.tx \
		text/phone/trainers1.tx \
		text/common.tx \
		text/common_2.tx \
		text/common_3.tx \
		main.tx

VERTGFX = \
		gfx/pics/%.png \
		gfx/trainers/%.png

HORIZGFX =	$(filter-out gfx/%.png, $(VERTGFX))


# uncomment this build target to enable png import:

#all: lzs

# the recompressed graphics may be larger than the originals,
# so take care to reorganize accordingly

all: pokecrystal-demo.gbc

win: pokecrystal-demo.gbc

clean:
	rm -f main.tx pokecrystal-demo.o pokecrystal-demo.gbc ${TEXTFILES}

winclean:
	del main.tx pokecrystal-demo.o pokecrystal-demo.gbc .\text\sweethoney.tx .\text\phone\bill.tx .\text\phone\elm.tx .\text\phone\mom.tx .\text\phone\trainers1.tx .\text\common.tx .\text\common_2.tx .\text\common_3.tx

pokecrystal-demo.o: pokecrystal-demo.asm constants.asm wram.asm ${TEXTFILES}
	rgbasm -o pokecrystal-demo.o pokecrystal-demo.asm
	
.asm.tx:
	python preprocessor.py < $< > $@

pokecrystal-demo.gbc: pokecrystal-demo.o
	rgblink -o $@ $<
	rgbfix -Cjv -i BYTE -k 01 -l 0x33 -m 0x10 -p 0 -r 3 -t PM_CRYSTAL $@


lzs: ${VERTGFX} ${HORIZGFX}

pngs:
	cd extras && python gfx.py mass-decompress && python gfx.py dump-pngs


front.png: tiles.png
	cd extras && python gfx.py png-to-lz --front $@ $(OBJECT_DIRECTORY)/tiles.2bpp
tiles.png:
	cd extras && python gfx.py png-to-2bpp $@
.png:: ${VERTGFX}
	cd extras && python gfx.py png-to-lz --vert $@
.png:: ${HORIZGFX}
	cd extras && python gfx.py png-to-lz $@

