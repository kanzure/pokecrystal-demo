#!/bin/bash
# Compares baserom.gbc and pokecrystal-demo.gbc

# create baserom.txt if necessary
if [ ! -f baserom.txt ]; then
    hexdump -C baserom.gbc > baserom.txt
fi

hexdump -C pokecrystal-demo.gbc > pokecrystal-demo.txt

diff baserom.txt pokecrystal-demo.txt | less
