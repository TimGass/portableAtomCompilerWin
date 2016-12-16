cls
set arg1=%~1
set arg2=%~2
set file=%arg1%\%arg2%
set variable=%file:~0,-4%
if exist %variable%.exe (
	del /Q %variable%.exe
)
clang++ -std=c++11 -pthread -m32 -static "%file%" -o "%variable%.exe"

"%variable%.exe"