@echo off
title Aula 01 - Programacao Batch
mode 60,30
color 0b
rem comentario
:inicio
cls
echo.
echo =================================
echo             Tela 02 
echo =================================
echo  [R] Retornar ao Menu
echo =================================
echo.
set /p op=Digite Uma Opcao: 
if /i %op% == r (call Menu.bat) else (
    echo.
    echo =====================
    echo    Opcao Invalida
    echo =====================
    pause > nul
    goto:inicio 
)