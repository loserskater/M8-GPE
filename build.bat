@echo off
::M8-GPE build script
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (
set VERSION=%%a%%b%%c
echo %%a-%%b-%%c > META-INF\com\google\android\aroma\version.txt
)
del M8-GPE-*.zip

tools\7za.exe a -mx9 -xr@tools/exclusion.txt M8-GPE-%VERSION%.zip aroma META-INF supersu system boot.img
