#!/bin/bash
VERSION=$(cat version.txt)
FILE=M8_GPE-${VERSION}.zip
rm $"FILE"
7za a -mx9 -xr@tools/exclusion.txt ${FILE} addons META-INF supersu system boot.img
cd ..
