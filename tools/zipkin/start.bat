:: 設定ファイルを読み込む
for /f "usebackq tokens=1,* delims==" %%a in ("env") do (
    set %%a=%%b
)

set SCOOP=C:\Users\%USER%\scoop
set JAVA=%SCOOP%\apps\openjdk11\current\bin\java.exe
set DIR=%SCOOP%\apps\zipkin\current

:: java -jar zipkin-server-2.23.16-exec.jar
%JAVA% -jar %DIR%\zipkin-server-%VER%-exec.jar
