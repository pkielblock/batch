@echo off
title Jogo do Sorteio
mode 60,30
color 06

set /a cont=5
set /a numero=(%random% %%50) + 1

:inicio
cls
if %cont% equ 1 (goto:palpite_final)
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo Adivinhe o numero sorteado ! (Entre 1 e 50)
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo ~~~~~~~~~~~~~~~
echo Tentativas : %cont%
echo ~~~~~~~~~~~~~~~
echo.
set /p ppt=Digite um palpite: 
if %ppt% equ %numero% (goto:venceu) else (
	set /a cont=%cont% - 1
		if %ppt% lss %numero% (goto:maior) else (goto:menor))
pause > nul

:venceu
cls
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo Parabens ! Voce acertou ! Numero sorteado : %numero%
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set /p resp=Deseja jogar novamente ? [S/N]: 
if /i %resp% equ s (goto:newgame) else (exit)
pause > nul

:perdeu
cls
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo Voce perdeu ! O numero sorteado era : %numero%
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set /p resp=Gostaria de tentar outra vez ? [S/N]: 
if /i %resp% equ s (goto:newgame) else (exit)
pause > nul

:newgame
set /a cont=5
set /a numero=(%random% %%50) + 1
goto:inicio
pause > nul

:maior
cls
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo Seu palpite foi : %ppt% // O numero sorteado e maior !
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
set /p resp=Tentar outro palpite ? [S/N]: 
if /i %resp% equ s (goto:inicio) else (exit)
pause > nul

:menor
cls
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo Seu palpite foi : %ppt% // O numero sorteado e menor !
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
set /p resp=Tentar outro palpite ? [S/N]: 
if /i %resp% equ s (goto:inicio) else (exit)
pause > nul

:palpite_final
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo Adivinhe o numero sorteado ! (Entre 1 e 50)
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo ~~~~~~~~~~~~~~~
echo Tentativas : %cont%
echo ~~~~~~~~~~~~~~~
echo.
set /p pptf=Ultima tentativa ! Qual o seu palpite ? 
if %pptf% equ %numero% (goto:venceu) else (goto:perdeu)
pause > nul 