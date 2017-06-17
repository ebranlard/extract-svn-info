rem This scripts echoes the branch name of a folder within a repository
rem A directory can be given as argument, otherwise, the directory FROM WHICH the command is run is used. 
@echo off
rem --- Extracting branch name
for /f "tokens=*" %%i in ('svn info %1 ^| find "Relative URL"') do set SBRANCHES=%%i
set BRANCH=%SBRANCHES:~25%
rem --- Check if trunk (not pretty)
for /f "tokens=*" %%i in ('svn info %1 ^| find "Relative URL" ^| find "trunk"')    do set STRUNK=%%i
if NOT "%STRUNK%"=="" ( 
    set BRANCH=trunk
)
