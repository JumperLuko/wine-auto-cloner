#!/bin/bash

wineSystemDir="/opt/wine-clone"
wine="wine"

mkdir-if() {
    if ! [ -e "$1" ]; then
        mkdir "$1"
    fi
}