@echo off
title Jo-Ken-Po
mode 120,30
color 06

set /a vitoria=0
set /a derrota=0
set /a empate=0
set /p nome=Digite o seu nome: 

:inicio
cls
echo ~~~~~~~~~~~~~~~~~~~~~~~~~
echo Bem-vindo ao Jo-Ken-Po !
echo ~~~~~~~~~~~~~~~~~~~~~~~~~
echo [R] Regras
echo [1] Tesoura
echo [2] Papel
echo [3] Pedra
echo [4] Lagarto
echo [5] Spock
echo [S] Sair
echo ~~~~~~~~~~~~~~~~~~~~~~~~~
echo.
echo Vitorias: %vitoria%
echo Derrotas: %derrota%
echo Empates:  %empate%
echo.
set /a numero=(%random% %%5) + 1
set /p op=Digite a opcao que desejar: 
if /i %op% equ r (goto:regras)
if %op% equ %numero% (goto:empatou)
if %op% equ 1 (goto:placar)
if %op% equ 2 (goto:placar)
if %op% equ 3 (goto:placar)
if %op% equ 4 (goto:placar)
if %op% equ 5 (goto:placar)
if /i %op% equ s (goto:sair)
pause > nul

:placar
echo.
if %op% equ 1 (echo %nome% jogou Tesoura !)
if %op% equ 2 (echo %nome% jogou Papel !)
if %op% equ 3 (echo %nome% jogou Pedra !)
if %op% equ 4 (echo %nome% jogou Lagarto !)
if %op% equ 5 (echo %nome% jogou Spock !)

if %numero% equ 1 (echo Computador jogou Tesoura !)
if %numero% equ 2 (echo Computador jogou Papel !)
if %numero% equ 3 (echo Computador jogou Pedra !)
if %numero% equ 4 (echo Computador jogou Lagarto !)
if %numero% equ 5 (echo Computador jogou Spock !)

if %op% equ 1 (
	if %numero% equ 2 (goto:venceu)
	if %numero% equ 4 (goto:venceu) else (goto:perdeu))
if %op% equ 2 (
	if %numero% equ 3 (goto:venceu)
	if %numero% equ 5 (goto:venceu) else (goto:perdeu))
if %op% equ 3 (
	if %numero% equ 1 (goto:venceu)
	if %numero% equ 4 (goto:venceu) else (goto:perdeu))
if %op% equ 4 (
	if %numero% equ 2 (goto:venceu)
	if %numero% equ 5 (goto:venceu) else (goto:perdeu))
if %op% equ 5 (
	if %numero% equ 1 (goto:venceu)
	if %numero% equ 3 (goto:venceu) else (goto:perdeu))

pause > nul

:venceu
echo.
echo ~~~~~~~~~~~~~~~~~~~~
echo %nome% venceu !
echo ~~~~~~~~~~~~~~~~~~~~
set /a vitoria=%vitoria% + 1
echo.
set /p resp=Deseja jogar novamente ? [S/N]: 
if /i %resp% equ s (goto:inicio) else (exit)
pause > nul

:perdeu
echo.
echo ~~~~~~~~~~~~~~
echo Voce perdeu ! 
echo ~~~~~~~~~~~~~~
set /a derrota=%derrota% + 1
echo.
set /p resp=Deseja jogar novamente ? [S/N]: 
if /i %resp% equ s (goto:inicio) else (exit)
pause > nul

:empatou
echo.
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
echo %nome% e Computador jogaram a mesma coisa ! Empatou !
echo ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
set /a empate=%empate% + 1
echo.
set /p resp=Deseja jogar novamente ? [S/N]: 
if /i %resp% equ s (goto:inicio) else (exit)
pause > nul

:regras
cls
echo Todas as opcoes empatam com elas mesmas ! Ex: Tesoura (1) contra Tesoura (1) = Empate !
echo.
echo Tesoura:
echo	A Tesoura (1) corta o Papel (2) e mata o Lagarto (4) ; A Tesoura (1) perde para a Pedra (3) e para o Spock (5) .
echo.
echo Papel:
echo	O Papel (2) cobre a Pedra (3) e refuta o Spock (5) ; O Papel (2) perde para a Tesoura (1) e para o Lagarto (4) .
echo.
echo Pedra:
echo	A Pedra (3) quebra a Tesoura (1) e esmaga o Lagarto (4) ; A Pedra (3) perde para o Papel (2) e para o Spock (5) .
echo.
echo Lagarto:
echo	O Lagarto (4) come o Papel (2) e envenena o Spock (5) ; O Lagarto (4) perde para a Tesoura (1) e para a Pedra (3) .
echo.
echo Spock:
echo	O Spock (5) quebra a Tesoura (1) e vaporiza a Pedra (3) ; O Spock (5) perde para o Papel (2) e para o Lagarto (4) .
echo.
echo Pressione qualquer tecla para voltar ao menu principal...
pause > nul
goto:inicio

:sair
echo.
set /p resp=Deseja sair do jogo ? [S/N]: 
if /i %resp% equ s (exit) else (goto:inicio)
pause > nul