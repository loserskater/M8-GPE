@echo off
::M8-GPE build script

::Set variables
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set VERSION=%%a-%%b-%%c)
set /p otaversion=<ota_version.txt
for /F "delims=" %%a in ('findstr /i "ro.ota.version" system\build.prop') do (
    set value=%%a
)

::Prepare files for build
del M8-GPE-*.zip
echo %VERSION% > META-INF\com\google\android\aroma\version.txt
sed.exe -i s/%value%/%otaversion%/g ..\system\build.prop
sed.exe -i s/%value%/%otaversion%/g ..\aroma\carrier\verizon\system\build.prop
sed.exe -i s/%value%/%otaversion%/g ..\aroma\carrier\sprint\system\build.prop

::Build
tools\7za.exe a -mx9 -xr@tools/exclusion.txt M8-GPE-%VERSION%.zip aroma META-INF supersu system boot.img