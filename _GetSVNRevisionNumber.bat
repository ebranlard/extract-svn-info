rem This scripts echoes the Revision number of a folder within a repository
rem A directory can be given as argument, otherwise, the directory FROM WHICH the command is run is used. 
@echo off

rem The path of the current script (_GetRevisonNumber.bat)
set SCRIPT_DIR=%~dp0
set MAX_PRG=%SCRIPT_DIR%max

rem ---  REVISION_NUMBER
rem Extracting Last changed revision for all files in directory and appending to a list
set LAST_REV_LIST=
for /f "tokens=4" %%i in ('svn info -R %1 ^| find "Last Changed Rev"') do (
   call set "LAST_REV_LIST=%%LAST_REV_LIST%% %%i"
)

rem Getting Maximum revision number in directory
for /f "delims=" %%i in ('%MAX_PRG% "%LAST_REV_LIST%"') do set "REVISION_NUMBER=%%i"

echo %REVISION_NUMBER%
