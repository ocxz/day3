@echo off & setlocal enabledelayedexpansion
set n=0
for /f "tokens=2,4,6 delims=. "  %%i in (2.txt) do (
 set m1=%%i&set m2=%%j&set m3=%%k
 for /f "delims="  %%a in (1.txt) do (
 set /a n+=1
 call set mm=%%m!n!%%
 echo %%a !mm!
 )
)
pause