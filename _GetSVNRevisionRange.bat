rem This scripts echoes the Revision range of a folder within a repository
rem A directory can be given as argument, otherwise, the directory FROM WHICH the command is run is used. 
@echo off
rem ---  Getting Svn version range
FOR /F %%i IN ('svnversion -n %1') DO SET "REVISION_RANGE=%%i"
echo %REVISION_RANGE%
