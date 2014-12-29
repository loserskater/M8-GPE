::M8-GPE build script
set /p VERSION=<version.txt
del M8-GPE-%VERSION%.zip
tools\7za.exe a -up0q0r2x2y2z1w2 -mx9 -xr@tools/exclusion.txt M8-GPE-%VERSION%.zip META-INF system boot.img
cd ..
