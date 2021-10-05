@echo off
title P1 - SI
mode 60,30
color 0b
:inicio
cls
echo        ( O   O )
echo           (_)
echo ------ooO---------Ooo-------
echo       Menu Principal
echo ----------------------------
echo [G] Gerar Arquivos
echo [O] Organizar Arquivos
echo [E] Finalizar o Programa
echo ----------------------------
echo.

set /p op=Digite uma opcao desejada:

if %op% == g (goto:gerar)
if %op% == o (goto:organizar)
if %op% == e (goto:sair) else (
   echo.
   echo --------------------
   echo   Opcao Invalida!
   echo --------------------
   pause > nul
   goto:inicio )

:gerar
set /p nome=Digite o nome do arquivo:
set /p qtde=Digite a qtde de arquivos:
set /p ext=Digite a extensao do arquivo:
C:
cd\Users\SeuUser\Desktop
for /L %%n in (1,1,%qtde%) do echo CONTEUDO > %nome%%%n.%ext%  
echo.    
echo ------------------------------      
echo arquivos gerados com sucesso!!
echo ------------------------------
pause > nul 
goto inicio

:organizar
C:
cd\Users\SeuUser\Desktop
set /p pasta=Digite a pasta a ser criada:
set /p ext=Digite a extensao do arquivo a ser organizado:
md %pasta%
move *.%ext% c:\Users\SeuUser\Desktop\%pasta%
echo.    
echo -----------------------------------      
echo arquivos organizados com sucesso!!
echo -----------------------------------
pause > nul 
goto inicio

:sair
echo.
set /p resp=Deseja realmente sair? [S/N]:
if /i %resp% equ s (exit) else (goto:inicio)






