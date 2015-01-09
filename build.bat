@echo off
::M8-GPE build script
set /p VERSION=<version.txt
del M8-GPE-%VERSION%.zip

::Build everything in decompiled directory
cd decompiled
for /f %%D in ('dir /a:d /b') do (
  java -jar ..\tools\apktool.jar b %%~fD
echo %%~fD
cd %%~fD\dist
  for /f %%A in ('dir /b') do (
    if %%~xA==.apk (
      if %%~nA==framework-res (
        move %%~fA ..\..\..\system\framework\%%~nxA
      )
      move %%~fA ..\..\..\system\priv-app\%%~nA\%%~nxA
    )
    if %%~xA==.jar (
      move %%~fA ..\..\..\system\framework\%%~nxA
    )
  )
cd ..\..
  rmdir %%~fD\dist /s /q
  rmdir %%~fD\build /s /q
)
cd ..

::Now build
tools\7za.exe a -mx9 -xr@tools/exclusion.txt M8-GPE-%VERSION%.zip assets aroma META-INF supersu system boot.img
