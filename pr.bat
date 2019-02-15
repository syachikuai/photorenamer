echo off
cd /d %~dp0 
for %%a in (*.%2) do (
  echo %%a >> filename.txt
)
set num=1
set cou=1
setlocal ENABLEDELAYEDEXPANSION
for /f %%a in (filename.txt) do (
  rename %%a %1!num!.%2
  set /a num=!num!+%cou%
)
del filename.txt