:: 設定ファイルを読み込む
for /f "usebackq tokens=1,* delims==" %%a in ("env") do (
    set %%a=%%b
)

set SCOOP=C:\Users\%USER%\scoop
set PHP=%SCOOP%\apps\php\current\php.exe
set DIR=%SCOOP%\apps\adminer\current

:: php -S 0.0.0.0:8000 adminer-4.8.1.php
%PHP% -S 0.0.0.0:8000 %DIR%\adminer-%VER%.php
