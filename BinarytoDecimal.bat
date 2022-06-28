@echo off
setlocal enabledelayedexpansion
call :main
exit /b 0

:main
set /p num="Binary Number: "
call :BinarytoDecimal %num%
exit /b 0

:BinarytoDecimal
set value=%1
set len=1
set output=0
if %value%==1 (
	echo 1
	exit /b 0
) else if %value%==0 (
	echo 0
	exit /b 0
)
echo %value%>x&for %%? in (x) do set /a len=%%~z? - 2&del x
set /a lenlessone=len - 1
for /l %%p in (0, 1, %lenlessone%) do (
	set char=!value:~%%p,1!
	if !char!==1 (
		set /a n=len - %%p - 1
		set result=1
		for /l %%i in (1,1,!n!) do (
			set /a result*=2
		)
		set /a output+=!result!
	) else if !char!==0 (
		set /a output+=0
	) else (
		echo "Make sure you only input binary values"
		exit /b -1
	)
)
echo %output%
exit /b 0
