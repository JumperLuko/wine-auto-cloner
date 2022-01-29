#!/bin/bash

# Clone folder if not exists
if ! [ -e "$HOME/.wine-clone" ]; then
    cp -R /opt/wine-clone/wine-default ~/.wine-clone
fi
#! How to verify if the user is right? Maybe create one file to flag
chown -r $USER ~/.wine-clone