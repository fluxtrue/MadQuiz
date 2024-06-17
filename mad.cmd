@echo off
title=Mad Quiz
color B

:Menu
cls
echo.
echo (1. Start
echo.
echo.
echo (.2 Info/Rules
echo.
echo.
echo.(.3 Exit
echo.
set /p input=Where do you want to go:
if %input%==1 goto startgame
if %input%==2 goto info
if %input%==3 goto exit


:startgame
cls
echo Type your name:
set /p name=
echo Hello %name%!
echo Do you want to start the the game? (y/n)
set /p start=
if %start% == Yes goto level1
if %start% == No goto menu
goto startgame


:info
cls
echo Hi, this is mad, a quiz game with 3 levels and is not that hard because it is made by one dev.
echo This took a long time to code so i hope you like it!
pause
cls
goto Menu



:level1
cls 
echo What is the funny blue app called
echo 1) Facebook
echo 2) Discord
echo 3) Twitter
set /p answer1=
if %answer1% == 1 goto wrong1
if %answer1% == 2 goto correct1
if %answer1% == 3 goto wrong1

:correct1
cls
echo You are right! Next Level? (y/n)
set /p NL1=

if %NL1% == Yes goto level2
if %NL1% == No goto menu
goto correct1

:wrong1
cls
Echo Sadly, you were wrong Retry? (y/n)
set /p WA1=
if %WA1% == Yes goto level1
if %WA1% == No goto Menu
goto wrong1

:level2
cls
echo Who made the game?
echo 1) Flux
echo 2) Juv
echo 3) Cursed
echo 4) Wumpio
set /p aa=
if %aa% == 1 goto correct2
if %aa% == 2 goto wrong2
if %aa% == 3 goto wrong2
if %aa% == 4 goto wrong2
goto correct2

:correct2
cls 
echo You are right! Next level? (y/n)
set /p ka=
if %ka% == Yes goto level3
if %ka% == No goto menu

:wrong2
cls
echo Sadly, you were wrong Retry? (y/n)
set/p retry=
if %retry% == Yes goto level3
if %retry% == No goto menu

:level3
cls
echo What was this made by
echo 1) JavaScript
echo 2) Batch
echo 3) Python
set /p ka=
if %ka% == 1) goto wrong3
if %ka% == 2) goto correct3
if %ka% == 3) goto wrong3
goto correct3

:correct3
cls
echo You are correct! You won the game!
pause
goto exit

:wrong3
cls
echo sadly, you were wrong Retry? (y/n)
set/p retry=
if %retry% == Yes goto level3
if %retry% == No goto exit



