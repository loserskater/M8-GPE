@echo off
cd 5.1_decompiled
for /f %%D in ('dir /a:d /b') do (
  java -jar ..\tools\apktool.jar b -c %%~fD
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