:: ---  Getting date (using local tool date.exe)
set DATE_PRG=%SCRIPT_PATH%date.exe
if not exist %DATE_PRG% (
    echo Error: %DATE_PRG% not present
    exit
)
for /f "tokens=*" %%i in ('%DATE_PRG% +"%%Y-%%m-%%d %%H:%%M"') do set CURRENT_DATE=%%i
