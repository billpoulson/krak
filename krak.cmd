@echo off
setlocal
set "current_path=%cd%"
echo %cd%
gitkraken -p "%current_path%"
endlocal
