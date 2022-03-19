REM 設定ファイルを読み込む
for /f "usebackq tokens=1,* delims==" %%a in ("env") do (
    set %%a=%%b
)

REM php -S 0.0.0.0:8000 adminer-4.8.1.php
php -S 0.0.0.0:8000 C:\Users\%USER%\scoop\apps\adminer\current\adminer-%VER%.php
