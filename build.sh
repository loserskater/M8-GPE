#!/bin/bash
VERSION=$(cat version.txt)
FILE=M8_GPE-${VERSION}.zip
rm $"FILE"
7za a -mx9 -xr@tools/exclusion.txt ${FILE} META-INF system boot.img
cd ..
