@ECHO OFF

START C:\"Program Files"\BakkesMod\BakkesMod.exe

SET RLProcess=RocketLeague.exe
::: ECHO "%RLProcess%"

:WAIT
::: echo Waiting for RL to open
TASKLIST | FINDSTR /I "%RLProcess%"
IF ERRORLEVEL 1 (GOTO :WAIT) ELSE (GOTO :CHECK)

:CHECK
::: echo Waiting for RL to close
TASKLIST | FINDSTR /I "%RLProcess%"
IF ERRORLEVEL 1 (TASKKILL /IM BakkesMod.exe & GOTO :EXIT) ELSE (GOTO :TIMEOUT)

:TIMEOUT
timeout /t 4 /nobreak
GOTO :CHECK

:EXIT
