@echo off
title Aula 01 - Programacao Batch
mode 60,30
color 0a
rem comentario
:inicio
cls
echo.
echo =================================
echo           Menu Principal 
echo =================================
echo  [O] Outra Tela
echo  [W] Executar Word
echo  [E] Executar Excel
echo  [P] Executar PowerPoint
echo  [V] Verificar Versao do Windows
echo  [C] Calculadora
echo  [N] Navegador
echo  [T] Teclado Virtual
echo  [R] Testar Conexao de Rede
echo  [F] Finalizar o Programa
echo =================================
echo.
set /p op=Digite Uma Opcao: 
if /i %op% == o (call Tela2.bat)
if /i %op% == w (goto:word)
if /i %op% == e (goto:excel)
if /i %op% == p (goto:power)
if /i %op% == v (goto:versao_win)
if /i %op% == c (goto:calculadora)
if /i %op% == n (goto:navegador)
if /i %op% == t (goto:teclado)
if /i %op% == r (goto:conexao)
if /i %op% == f (goto:finalizar) else (
    echo.
    echo =====================
    echo    Opcao Invalida
    echo =====================
    pause > nul
    goto:inicio 
)
:word
start winword.exe
goto:inicio

:excel
start excel.exe
goto:inicio

:power
start powerpnt.exe
goto:inicio

:versao_win
start winver.exe
goto:inicio

:calculadora
start calc.exe
goto:inicio

:navegador
echo.
set /p site=Digite o Endereco da Pagina: 
start %site%
goto:inicio

:teclado
start osk.exe
goto:inicio

:conexao
echo.
set /p conexao=Digite o Endereco IP ou Endereco da Pagina:
ping %conexao% -t
goto:inicio

:finalizar
echo.
set /p resp=Deseja Encerrar o Programa? [S/N]: 
if /i %resp% == s (exit) else (goto:inicio)