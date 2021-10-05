@echo off
title Jogo - Sorteio
mode 60,30
color 0b
set /a cont = 0
:sorteio
cls
set /a numero = (%random% %%50) + 1
set /a cont = %cont% + 1
echo.
echo ===========================
echo  Numero Sorteado: %numero%
echo  Qtde de Sorteios: %cont%
echo ===========================
echo.
set /p resp=Deseja Sortear Novo Numero? [S/N]: 
if /i %resp% == s (goto:sorteio) else (exit)