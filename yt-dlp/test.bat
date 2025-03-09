@REM @echo off 
:: This program just displays Hello World 
set message=Hello World 
echo %message%
pause

@REM @ECHO OFF

@REM SET /P COLOR="Choose a background color (type red, blue or black): "

@REM 2>NUL CALL :CASE_%COLOR% # jump to :CASE_red, :CASE_blue, etc.
@REM IF ERRORLEVEL 1 CALL :DEFAULT_CASE # If label doesn't exist

@REM ECHO Done.
@REM PAUSE
@REM EXIT /B

@REM :CASE_red
@REM   COLOR CF
@REM   GOTO END_CASE
@REM :CASE_blue
@REM   COLOR 9F
@REM   GOTO END_CASE
@REM :CASE_black
@REM   COLOR 0F
@REM   GOTO END_CASE
@REM :DEFAULT_CASE
@REM   ECHO Unknown color "%COLOR%"
@REM   GOTO END_CASE
@REM :END_CASE
@REM   VER > NUL # reset ERRORLEVEL
@REM   GOTO :EOF # return from CALL