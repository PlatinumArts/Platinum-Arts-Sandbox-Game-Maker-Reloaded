@ECHO OFF

set SANDBOX_BIN=bin

IF /I "%PROCESSOR_ARCHITECTURE%" == "amd64" (
    set SANDBOX_BIN=bin64
)
IF /I "%PROCESSOR_ARCHITEW6432%" == "amd64" (
    set SANDBOX_BIN=bin64
)

start binaries\%SANDBOX_BIN%\sandbox.exe "-quser_data" -gserver-log.txt -d %*
