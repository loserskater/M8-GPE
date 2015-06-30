@echo off
::M8-GPE build script

::Set variables
For /f "tokens=2-4 delims=/ " %%a in ('date /t') do (set VERSION=%%a-%%b-%%c)
set /p otaversion=<ota_version.txt
for /F "delims=" %%a in ('findstr /i "ro.ota.version" system\build.prop') do (
    set value=%%a
)

::Prepare files for build
del Doppelkanger_M8-GPE+_*.zip
echo %VERSION% > META-INF\com\google\android\aroma\version.txt
cd tools
sed.exe -i s/%value%/%otaversion%/g ..\system\build.prop
sed.exe -i s/%value%/%otaversion%/g ..\aroma\carrier\verizon\system\build.prop
sed.exe -i s/%value%/%otaversion%/g ..\aroma\carrier\sprint\system\build.prop
cd ..

::Build
tools\7za.exe a -mx9 -xr@tools/exclusion.txt Doppelkanger_M8-GPE+_%VERSION%.zip aroma META-INF supersu system boot.img

tools\7za.exe a -mx9 -xr@tools/exclusion.txt Doppelkanger_M8-GPE+_%VERSION%-UPDATE.zip @updated_files.txt