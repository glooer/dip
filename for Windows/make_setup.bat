@echo off
set a=%CD%

path=%PATH%;%a%/Inno Setup 5

cd ..
ocra --chdir-first --no-lzma --innosetup  "%a%\main.iss" main.rbw 

move "Output" "for Windows\Output"