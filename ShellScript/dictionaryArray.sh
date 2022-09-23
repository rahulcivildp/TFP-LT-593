#!/bin/bash

declare -A sounds
sounds[dog]="bark"
sounds[cow]="meow"
sounds[bird]="tweet"
sounds[wolf]="puk puk"

echo "Dog Sound" ${sounds[dog]}
echo "All Animal Sound" ${sounds[@]}
echo "All Animal" ${!sounds[@]}
echo "Number of Animals" ${#sounds[@]}
unset sounds[dog]





