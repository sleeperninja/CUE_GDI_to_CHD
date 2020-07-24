@echo off

REM Use variables local to script to avoid scope conflicts with user and system. 
setlocal

REM Search child directories for .cue (Saturn, Playstation, SegaCD) and .gdi (Dreamcast).
FOR /R %%i IN (*.cue, *.gdi) DO (

  REM Set "dir" variable for current CUE/GDI in the loop.
  set "dir=%%i"

  REM Set current working directory to parent directory of current CUE/GDI.
  pushd "%dir%\.."

  REM Run chdman from batch directory to create CHD in dragged-from directory.
  "%~dp0chdman" createcd --force --input "%%i" --output "%cd%\%%~ni.chd"

  REM Pop back to original directory.
  popd
)
PAUSE
