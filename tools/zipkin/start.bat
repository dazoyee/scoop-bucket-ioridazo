:: 設定ファイルを読み込む
for /f "usebackq tokens=1,* delims==" %%a in ("env") do (
    set %%a=%%b
)

set SCOOP=C:\Users\%USER%\scoop

if not exist %SCOOP%\apps\zipkin\current\zipkin-server-exec.jar copy /b %SCOOP%\apps\zipkin\current\zipkin-server-*-exec.jar %SCOOP%\apps\zipkin\current\zipkin-server-exec.jar

::set STORAGE_TYPE=elasticsearch
::set ES_HOSTS=https://localhost:9200
::set ES_USERNAME=%ES_USERNAME%
::set ES_PASSWORD=%ES_PASSWORD%
::set ES_HTTP_LOGGING=BASIC

:: java -jar zipkin-server-2.23.16-exec.jar
%SCOOP%\apps\openjdk11\current\bin\java.exe -jar %SCOOP%\apps\zipkin\current\zipkin-server-exec.jar
