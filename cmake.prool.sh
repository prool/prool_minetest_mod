#!/bin/sh
# cmake for make minetest, by prool
cmake . -DRUN_IN_PLACE=TRUE -DBUILD_CLIENT=FALSE -DBUILD_SERVER=TRUE -DENABLE_CURL=ON -DCURL_INCLUDE_DIR=/usr/include/x86_64-linux-gnu/curl/ -DENABLE_REDIS=OFF -DENABLE_SOUND=OFF -DIRRLICHT_INCLUDE_DIR=/usr/include/irrlicht/
