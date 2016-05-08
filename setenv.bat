@echo off

if "%ALLEGRO_HOME%" == "" GOTO NOALLEGRO
if "%ALLEGRO_VERSION%" == "" GOTO NOALLEGRO
if "%ALLEGRO_LIB%" == "" set ALLEGRO_LIB=monolith-debug

:YESALLEGRO
set CGO_CFLAGS=-I%ALLEGRO_HOME%\include
set CGO_LDFLAGS=-L%ALLEGRO_HOME%\bin^ -lallegro_%ALLEGRO_LIB%-%ALLEGRO_VERSION%
GOTO END

:NOALLEGRO
echo Please set the ALLEGRO_HOME and ALLEGRO_VERSION environment variables and try again.
GOTO END

:END
