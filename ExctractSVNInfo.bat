:: Extract relevant informations from a SVN directory
:: The info can then be used for automatic software/document versioning 


@echo off
:: ---  Parsing arguments
IF "%1"=="" (
   set WORK_DIR=%cd%
) else (
   set WORK_DIR=%1
)

:: --- Directory where the scripts are located
set SCRIPT_PATH=%~dp0

:: ---  Getting Svn Info 
call %SCRIPT_PATH%_GetSVNRevisionNumber.bat %WORK_DIR% 1>NUL
call %SCRIPT_PATH%_GetSVNRevisionRange.bat  %WORK_DIR% 1>NUL
call %SCRIPT_PATH%_GetSVNBranchName.bat     %WORK_DIR% 1>NUL
call %SCRIPT_PATH%_GetCurrentDate.bat       %WORK_DIR% 1>NUL

:: --- Writing sumary
echo Directoty     : %WORK_DIR% 
echo Branch        : %BRANCH% 
echo Revision range: %REVISION_RANGE%
echo Current date  : %CURRENT_DATE%




