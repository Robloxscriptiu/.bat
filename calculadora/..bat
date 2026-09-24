@echo off
setlocal enabledelayedexpansion
color 0A
:principal
cls
echo comeca a dizer "x" (multiplicar) "+" (somar) "/" (dividir) "-" (subtrair) "e" (expoente) "r" (raizes)
set /p calcular=
if "!calcular!"=="x" goto multi
if "!calcular!"=="+" goto soma
if "!calcular!"=="/" goto dividir
if "!calcular!"=="-" goto subtrair
if "!calcular!"=="e" goto expoente
if "!calcular!"=="r" goto raiz
echo error

:multi
cls
set /p multiplicarn1= 
set /p multiplicarn2=
set /a resultadom= !multiplicarn1! * !multiplicarn2!
echo !resultadom!
echo clique em qualquer tecla para voltar ao inicio
pause>nul
goto principal

:soma
cls
set /p somarn1=
set /p somarn2=
set /a resultados= !somarn1! + !somarn2!
echo !resultados!
echo clique em qualquer tecla para voltar ao inicio
pause>nul
goto principal

:dividir
cls
set /p dividirn1=
set /p dividirn2=
set /a resultadod= !dividirn1! / !dividirn2!
echo !resultadod!
echo clique em qualquer tecla para voltar ao inicio
pause>nul
goto principal

:subtrair
cls
set /p subtrairn1=
set /p subtrairn2=
set /a resultadosu= !subtrairn1! - !subtrairn2!
echo !resultadosu!
echo clique em qualquer tecla para voltar ao inicio
pause>nul
goto principal

:expoente
set /p expoenten1=
set /p expoenten2=
set /a expoenten2-=1
set expoenten1save=!expoenten1!

for /l %%i in (1,1,!expoenten2!) do (
set /a resultadoe= !expoenten1save! * !expoenten1!
set expoenten1save=!resultadoe!
)
echo !resultadoe!=
echo clique em qualquer tecla para voltar ao inicio
pause>nul
goto principal

:raiz
cls
echo adicione zeros a frente do numero para ter um resultado mais claro (mas nao exagere)
set /p numero1=
set /a numero2=%random% %% !numero1! + 0
goto raiz2

:raiz2
set /a numero3=numero1/numero2
if !numero3! EQU !numero2! (
echo !numero2!
echo clique em qualquer tecla para voltar ao inicio
pause>nul
goto principal
)
if !numero3! GTR !numero2! (
set /a numero2=%random% %% !numero3! + !numero2!
)
if !numero2! GTR !numero3! (
set /a numero2=%random% %% !numero2! + !numero3!
)
goto raiz2