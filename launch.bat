@echo off
setlocal EnableDelayedExpansion
java -jar Prosper.jar
set "condition=false"
for %%f in (Prosper-*.jar) do (
   del Prosper.jar
   ren %%f Prosper.jar
   set "condition=true"
)
if "%condition%"=="true" (
   java -jar Prosper.jar
)