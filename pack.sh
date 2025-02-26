#!/bin/bash

MAPNAME="uvcs"
DIR=map-${MAPNAME}_src.dpkdir
cd $DIR
VERSION=5  # TODO: maybe move the version information out of here
7z -tzip -mx=9 a ../map-${MAPNAME}_${VERSION}.dpk DEPS maps/${MAPNAME}.bsp maps/${MAPNAME}.map maps/${MAPNAME} about DEPS meta minimaps models scripts textures
