:: 設定ファイルを読み込む
for /f "usebackq tokens=1,* delims==" %%a in ("env") do (
    set %%a=%%b
)

set SCOOP=C:\Users\%USER%\scoop
set DIR=%SCOOP%\apps\mariadb\current

%DIR%\bin\mariadbd.exe
