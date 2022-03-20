REM 設定ファイルを読み込む
for /f "usebackq tokens=1,* delims==" %%a in ("env") do (
    set %%a=%%b
)

REM java -jar zipkin-server-2.23.16-exec.jar
java -jar C:\Users\%USER%\scoop\apps\zipkin\current\zipkin-server-%VER%-exec.jar
