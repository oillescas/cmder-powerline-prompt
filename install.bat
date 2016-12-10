@echo off
IF "%cmder_root%" == "" GOTO NOPATH
:YESPATH
@ECHO "The powerline_prompt.lua  --> %cmder_root%\config\powerline_prompt.lua"
cp %cmder_root%\config\powerline_prompt.lua %cmder_root%\config\powerline_prompt.lua.backup
cp powerline_prompt.lua %cmder_root%\config\powerline_prompt.lua
GOTO END
:NOPATH
@ECHO The cmder_root environment variable was NOT detected.
@ECHO Set cmder_root environment variable.
GOTO END
:END