@echo off
setlocal enabledelayedexpansion
color 0A
if "!moedas!"=="" set moedas=0
if "!bellys!"=="" set bellys=0
if "!nivel!"=="" set nivel=0
if "!espada!"=="" set espada=0
if "!fruta!"=="" set fruta=0
if "!pontos!"=="" set pontos=0
if "!multiplicador!"=="" set multiplicador=1
if exist aqui4.txt (
    set /p bellys=<aqui4.txt
)
if exist aqui2.txt (
    set /p moedas=<aqui2.txt
) 
if exist aqui3.txt (
    set /p nivel=<aqui3.txt
)
if exist aqui5.txt (
    set /p fruta=<aqui5.txt
)
if exist aqui6.txt (
    set /p espada=<aqui6.txt
)
if exist aqui7.txt (
    set /p multiplicador=<aqui7.txt
)
if exist aqui8.txt (
    set /p pontos=<aqui8.txt
)
set /a bellys=bellys
set /a moedas=moedas
set /a nivel=nivel
set /a fruta=fruta
set /a espada=espada
set /a pontos=pontos
set /a multiplicador=multiplicador

:parte1
cls
set /p escolha=1+1= 
if "!escolha!"=="2" goto parte2
goto mal

:parte2
cls
set /p escolha2=2+2=
if "!escolha2!"=="4" goto parte3
goto mal

:parte3
cls
set /p escolha3=4+4=
if "!escolha3!"=="8" goto parte4
goto mal

:parte4
cls
set /p escolha4=8+8=
if "!escolha4!"=="16" goto parte5
goto mal
	
:parte5
cls
set /p escolha5=16+16=
if "!escolha5!"=="32" goto parte6
goto mal

:parte6
cls
set /p escolha6=32+32=
if "!escolha6!"=="64" goto parte7
goto mal

:parte7
cls
set /p escolha7=64+64=
if "!escolha7!"=="128" goto parte8
goto mal

:parte8
cls
set /p escolha8=128+128=
if "!escolha8!"=="256" goto parte9
goto mal

:parte9
cls
set /p escolha9=256+256=
if "!escolha9!"=="512" goto parte10
goto mal

:parte10
cls
set /p escolha10=512+512=
if "!escolha10!"=="1024" goto parte11
goto mal

:parte11
cls
set /p escolha11=1024+1024=
if "!escolha11!"=="2048" goto parte12
goto mal

:parte12
cls
set /p escolha12=2048+2048=
if "!escolha12!"=="4096" goto parte13
goto mal

:parte13
cls
set /p escolha13=4096+4096=
if "!escolha13!"=="8192" goto parte14
goto mal

:parte14
cls
set /p escolha14=8192+8192=
if "!escolha14!"=="16384" goto parte15
goto mal

:parte15
cls
set /p escolha15=16384+16384=
if "!escolha15!"=="32768" goto parte16
goto mal

:parte16
cls
set /p escolha16=32768+32768=
if "!escolha16!"=="65536" goto parte17
goto mal

:parte17
cls
set /p escolha17=65536+65536=
if "!escolha17!"=="131072" goto bem
goto mal

:bem
cls
echo PARABENS CONSEGUISTE PASSAR O INCRIVEL TESTE
echo Queres voltar ao inicio?
echo Se sim, clica 1 se queres sair clica 2, se queres ir para um jogo, clica 3
echo.
set /p conseguiste=Agora, fale a sua escolha:
if "!conseguiste!"=="1" goto parte1
if "!conseguiste!"=="2" goto sair
if "!conseguiste!"=="3" goto menu
goto bem

:sair
pause
echo Obrigado por jogar!
pause
exit

:mal
cls
echo erraste parabens
echo para continuar clica em qualquer tecla
pause>nul
goto parte1

:menu
cls
echo ================================================
echo.
echo        Jogo para quem terminou o teste
echo.
echo ================================================
echo.
echo Se estas aqui, conseguiste passar o teste nao e?
set /p qwerty=nao mintas, isto nao esta para brincadeiras.
if "!qwerty!"=="sim" goto explicacao
if "!qwerty!"=="nao" goto parte1
goto menu

:explicacao
cls
if exist aqui4.txt (
set /p bellys=<aqui4.txt
set /a bellys+=0
echo tu tens !bellys! bellys                                                                                                    
) else (
set bellys=0
echo nao tens bellys ainda
)
if exist aqui.txt (
      echo numero aleatorio que tens:
      type aqui.txt
) else (
echo numero aleatorio que tens: ainda nao tens um numero aleatorio
)
set fruta=off
set espada=off
if exist aqui2.txt (
      echo moedas:
      type aqui2.txt
 ) else (
    set moedas=0
    echo moedas: ainda nao tens moedas
)
echo.
echo bellys:!bellys!

if !bellys! LSS 5000 (
echo Isto pra falar a verdade sao 7 jogos, podes escolher entre:
echo [1] gerador de numeros
echo [2] contador de numeros
echo [3] advinhacao de numeros
echo [4] blox fruits
echo [5] save safe
echo [6] se quiser entrar no grupo do discord para sugestoes e feedbacks
echo [7] aposta as tuas moedas (nao envolve dinheiro real^)
echo [8] jogo incremental basico
echo [9] jogo de achar numeros
set /p escolhadaexplicacao=Qual jogo escolhes? 

if "!escolhadaexplicacao!"=="1" goto jogo1
if "!escolhadaexplicacao!"=="2" goto jogo2
if "!escolhadaexplicacao!"=="3" goto jogo3
if "!escolhadaexplicacao!"=="4" goto jogo4
if "!escolhadaexplicacao!"=="5" goto savesafe
if "!escolhadaexplicacao!"=="6" start https://discord.gg/8Y9VQZwWu
if "!escolhadaexplicacao!"=="7" goto jogo5
if "!escolhadaexplicacao!"=="8" goto jogo6
if "!escolhadaexplicacao!"=="9" goto jogo7
goto explicacao
) else (
echo Isto pra falar a verdade sao 7 jogos, e, como tens mais de 5000 bellys, podes escolher o admin panel tambem, podes escolher entre:
echo [1] gerador de numeros
echo [2] contador de numeros
echo [3] advinhacao de numeros
echo [4] blox fruits
echo [5] save safe
echo [6] se quiser entrar no grupo do discord para sugestoes, feedbacks e reportar bugs
echo [7] aposta as tuas moedas (nao envolve dinheiro real)
echo [8] jogo incremental basico
echo [9] jogo de achar numeros
echo [10] admin panel
set /p escolhadaexplicacao2=Qual jogo escolhes? 

if "!escolhadaexplicacao2!"=="1" goto jogo1
if "!escolhadaexplicacao2!"=="2" goto jogo2
if "!escolhadaexplicacao2!"=="3" goto jogo3
if "!escolhadaexplicacao2!"=="4" goto jogo4
if "!escolhadaexplicacao2!"=="5" goto savesafe
if "!escolhadaexplicacao2!"=="6" start https://discord.gg/8Y9VQZwWu
if "!escolhadaexplicacao2!"=="7" goto jogo5
if "!escolhadaexplicacao2!"=="8" goto jogo6
if "!escolhadaexplicacao2!"=="9" goto jogo7
if "!escolhadaexplicacao2!"=="10" goto admin
goto explicacao
)


:jogo1
cls
echo O seu numero e este: %random% >aqui.txt
echo O seu numero foi gerado num arquivo que foi criado agora, ele sera guardado
echo se quiser outro, clique 1, se quiser voltar ao menu principal, clique 2
set /p escolhadojogo1=Digite a sua escolha 
if "!escolhadojogo1!"=="1" goto jogo1
if "!escolhadojogo1!"=="2" goto explicacao
goto jogo1

:jogo2
cls
for /L %%L in (1,1,10) do (
echo %%L
)
echo para continuar clica em qualquer tecla
pause>nul
echo Chegaste a 10, boa!
set /a moedas+=1
echo !moedas!>aqui2.txt

for /L %%L in (10,1,100) do (
echo %%L
)
echo para continuar clica em qualquer tecla
pause>nul
echo Chegaste a 100, boa!
set /a moedas+=3
echo !moedas!>aqui2.txt

for /L %%L in (100,1,1000) do (
echo %%L
)
echo clique em qualquer tecla para continuar
pause>nul
echo Chegaste a 1000, boa!
set /a moedas+=5
echo !moedas!>aqui2.txt

for /L %%L in (1000,1,10000) do (
echo %%L
)
echo clique em qualquer tecla para continuar
pause>nul
echo Chegaste a 10000, boa!
set /a moedas+=10
echo !moedas!>aqui2.txt

for /L %%L in (10000,1,100000) do (
echo %%L
)
echo clique em qualquer tecla para continuar
pause>nul
echo Chegaste a 100000, boa!
set /a moedas+=15
echo !moedas!>aqui2.txt

for /L %%L in (100000,1,1000000) do (
echo %%L
)
set /a moedas+=25
echo !moedas!>aqui2.txt
:finaljogo2
echo Chegaste a 1000000, que e o fim, agora, queres ir pro menu?
echo Se sim, digita 1, mas nao tens mais nada para fazer aqui.
set /p escolha32=Fala a tua escolha
if "!escolha32!"=="1"  goto explicacao
goto finaljogo2

:jogo3
cls
set /a secreto=%random% %% 100 + 1
set tentativas=0

:adivinhar
set /a tentativas+=1
set /p palpite=Adivinha o numero (1 a 100):
if "!palpite!"=="!secreto!" (
    echo Acertaste em !tentativas! tentativas!
    set /a moedas+=10
    echo !moedas!>aqui2.txt
    timeout /t 2>nul
    goto explicacao
)
if "!palpite!" GTR "!secreto!" echo Muito alto!
if "!palpite!" LSS "!secreto!" echo Muito baixo!
goto adivinhar

:jogo4
cls
set "barra="
set quantotempofalta=0

for /L %%i in (1,1,20) do (
    set "barra=!barra!#"
    set /a quantotempofalta+=5
    echo Carregando: !barra! !quantotempofalta!
    timeout /t 1 >nul
)
echo.
echo Feito!
echo clique em qualquer tecla para continuar
pause>nul
goto :jogo4real

:jogo4real
cls
if exist aqui4.txt (
   set /p bellys=<aqui4.txt
   echo seus bellys: !bellys!
) else (
   echo ainda nao tens bellys :P
)
if exist aqui3.txt (
  echo seu nivel:
  type aqui3.txt
) else (
  echo ainda nao tens moedas
)
echo isto e uma simulacao do blox fruits espero que gostem :)
echo qual coisa queres fazer, novato/a?
echo [1] bater nas criaturas
echo [2] loja
echo [3] voltar ao menu
set /p escolha3x1=
if "!escolha3x1!"=="1" goto jogo4op1
if "!escolha3x1!"=="2" goto jogo4op2
if "!escolha3x1!"=="3" goto explicacao
goto jogo4

:jogo4op1
cls
set vida=100
set vidadoinimigo=50
echo qual coisa queres usar para bater?
echo [1] usar soco
echo [2] usar fruta
echo [3] usar espada
echo.
echo =====================================
echo           !vida! / 100
echo =====================================
set /p escolhaminhacontrainimigos=
if "!escolhaminhacontrainimigos!"=="1" goto soco
if "!escolhaminhacontrainimigos!"=="2" goto fruta
if "!escolhaminhacontrainimigos!"=="3" goto espada
goto joguinho4

:fruta
cls
if !fruta! GEQ 1 (
   set /a dano=20 * !fruta!
   echo deste !dano! de dano no inimigo, o inimigo devolveu-te com 5 de dano
   set /a vida-=5
   set /a vidadoinimigo-=!dano!
   echo =====================================
   echo           !vida! / 100
   echo =====================================
   echo clique em qualquer tecla para continuar
   pause>nul
) else (
   echo ainda nao tens fruta e o inimigo deu-te 5 de dano
   set /a vida-=5
   echo clique em qualquer tecla para continuar
   pause>nul
   echo.
   echo =====================================
   echo           !vida! / 100
   echo =====================================
)
goto joguinho4

:soco
cls
echo deste 5 de dano no inimigo, mas o inimigo devolve-te com 5 de dano
set /a vida-=5
set /a vidadoinimigo-=5
echo.
echo =====================================
echo           !vida! / 100
echo =====================================
echo clique em qualquer tecla para continuar
pause>nul
goto joguinho4

:espada
cls
if !espada! GEQ 1 (
   set /a dano=15 * !espada!
   echo deste !dano! de dano no inimigo, o inimigo devolveu-te com 5 de dano
   set /a vida-=5
   set /a vidadoinimigo-=!dano!
   echo.
   echo =====================================
   echo           !vida! / 100
   echo =====================================
    echo clique em qualquer tecla para continuar
    pause>nul
   goto joguinho4
) else (
   echo ainda nao tens espada e o inimigo devolveu-te com 5 de dano
   set /a vida-=5
   echo.
   echo =====================================
   echo           !vida! / 100
   echo =====================================
    echo clique em qualquer tecla para continuar
    pause>nul
   goto joguinho4
)

:joguinho4
cls
if !vida! LEQ 0 (
  echo tu morreste, queres jogar outra vez?
  echo [1] sim
  echo [2] nao
  set /p escolhax32=
  if "!escolhax32!"=="1" goto jogo4op1
  if "!escolhax32!"=="2" goto jogo4real
)

if !vidadoinimigo! LEQ 0 (
  cls
  echo parabens conseguiste 50 bellys e 1 nivel
  set /a bellys+=50
  echo !bellys!>aqui4.txt 
  set /a nivel+=1
  echo !nivel!>aqui3.txt
  set vida=100
  echo !nivel!>aqui3.txt
  echo !bellys!>aqui4.txt
  echo [1] bater noutro inimigo
  echo [2] sair daqui
  set /p nobruapelao=
  if "!nobruapelao!"=="1" goto jogo4op1
  if "!nobruapelao!"=="2" goto jogo4real
)
cls
echo Ele continua a atacar-te, oq fazes
echo [1] usar soco
echo [2] usar fruta
echo [3] usar espada
echo [4] sair daqui
echo.
echo =====================================
echo           !vida! / 100
echo =====================================
set /p paracontinuaraatacar=
if "!paracontinuaraatacar!"=="1" goto soco
if "!paracontinuaraatacar!"=="2" goto fruta
if "!paracontinuaraatacar!"=="3" goto espada
if "!paracontinuaraatacar!"=="4" goto jogo4real
goto joguinho4

:jogo4op2
cls
echo esta e a loja de itens, podes comprar
echo [1] [500 belly] fruta
echo [2] [300 belly] espada
set /p compra=
if "!compra!"=="1" (
  cls
  if !bellys! GEQ 500 (
    cls
    echo compraste fruta por 500 bellys   
    set fruta=1
    set /a bellys-=500
    echo !bellys!>aqui4.txt
    echo clique em qualquer tecla para continuar
    pause>nul
    cls
    echo agora qual queres?
    echo [1] voltar ao menu
    echo [2] comprar outra coisa   
    set /p lojadentro=
    if "!lojadentro!"=="1" goto jogo4real
    if "!lojadentro!"=="2" goto jogo4op2
  ) else (
    cls
    echo nao tens dinheiro suficiente
    echo clique em qualquer tecla para continuar
    pause>nul
    cls
    echo agora qual queres?
    echo [1] voltar ao menu
    echo [2] comprar outra coisa   
    set /p lojadentro=
    if "!lojadentro!"=="1" goto jogo4real
    if "!lojadentro!"=="2" goto jogo4op2
  )
)
if "!compra!"=="2" (
  if !bellys! GEQ 300 (
    cls
    echo compraste espada por 300 bellys
    set espada=1
    set /a bellys-=300
    echo !bellys!>aqui4.txt
    echo clique em qualquer tecla para continuar
    pause>nul
    cls
    echo agora qual queres?
    echo [1] voltar ao menu
    echo [2] comprar outra coisa   
    set /p lojadentro=
    if "!lojadentro!"=="1" goto jogo4real
    if "!lojadentro!"=="2" goto jogo4op2
  ) else (
    cls
    echo nao tens dinheiro suficiente
    echo clique em qualquer tecla para continuar
    pause>nul
    echo agora qual queres?
    echo [1] voltar ao menu
    echo [2] comprar outra coisa     
    set /p lojadentro=
    if "!lojadentro!"=="1" goto jogo4real
    if "!lojadentro!"=="2" goto jogo4op2
  )
)

:ocorreuumerro
cls
echo desculpe mas ocorreu um erro, por isso, vai ser redirecionado para o menu dos jogos em 300 segundos, pode clicar em qualquer tecla para escapar.
timeout /t 300>nul
goto explicacao
goto explicacao

:admin
cls
echo ============================
echo     PAINEL ADMIN
echo ============================
echo.
echo Comandos:
echo moedas=numero
echo niveis=numero
echo bellys=numero
echo sair
echo.
echo Exemplo: moedas=1000
echo.

set /p cmd=

if /i "!cmd!"=="sair" goto explicacao

if "!cmd!"=="" (
    echo Comando invalido
    echo clique em qualquer tecla para continuar
    pause>nul
    goto admin
)

if /i "!cmd:~0,7!"=="moedas=" (
    set "val=!cmd:~7!"
    set moedas=!val!
    echo !moedas!>aqui2.txt
    echo Moedas atualizadas para !moedas!
    echo clique em qualquer tecla para continuar
    pause>nul
    goto admin
)

if /i "!cmd:~0,7!"=="bellys=" (
    set "val=!cmd:~7!"
    set bellys=!val!
    echo !bellys!>aqui4.txt
    echo Bellys atualizados para !bellys!
    echo clique em qualquer tecla para continuar
    pause>nul
    goto admin
)
if /i "!cmd:~0,7!"=="niveis=" (
    set "val=!cmd:~7!"
    set niveis=!val!
    echo !niveis!>aqui3.txt
    echo Niveis atualizados para !niveis!
    echo clique em qualquer tecla para continuar
    pause>nul
    goto admin
)
echo Comando invalido
pause
goto explicacao     

:savesafe
cls
echo !nivel!>aqui3.txt
echo !bellys!>aqui4.txt
echo !fruta!>aqui5.txt
echo !espada!>aqui6.txt
echo !moedas!>aqui2.txt
echo obrigado por jogar ;) , espero que gostem
echo clique em qualquer tecla para continuar (sair)
pause>nul
exit

:jogo5
cls
set /p valorparaapostar= diz o valor para apostar: 
if !moedas! GEQ !valorparaapostar! (
   set /a nj5=%random% %% 10 + 1
   if !nj5! LSS 5 (
   set /a moedas -=!valorparaapostar!
   echo perdeste dinheiro (-!valorparaapostar!^)
   )
   if !nj5! GEQ 5 (
      if !nj5! EQU 10 (
         set /a valorparaapostar2= !valorparaapostar! * 10
         set /a moedas+=valorparaapostar2
         echo PARABENS GANHASTE O JACKPOT (+!valorparaapostar2!^)
      ) else (
         set /a moedas+=valorparaapostar
         echo ganhaste dinheiro (+!valorparaapostar!^)
      )
   )
) else (
echo tu apostaste mais do que as moedas que tens
echo clique em qualquer tecla para continuar
pause>nul
goto jogo5
)
echo !moedas!>aqui2.txt
echo agora tens !moedas! moedas
echo clique em qualquer tecla para continuar
pause>nul
goto explicacao

:jogo6
:menujogo6
cls
set /a preco=(multiplicador * 3) / 2
set /a multiplicadorbruto=(multiplicador * 5) / 4

echo pontos: !pontos!
echo pontos por click: !multiplicadorbruto!
echo.
echo [1] upgrade
echo [2] menu dos jogos
echo [3] click
choice /c 123 /n

if errorlevel 3 goto clickjogo6
if errorlevel 2 goto explicacao
if errorlevel 1 goto upgradingjogo6

:upgradingjogo6
cls
if !pontos! GEQ !preco! (
    set /a multiplicador+=1
    set /a pontos-=preco
    echo !multiplicador!>aqui7.txt
    echo !pontos!>aqui8.txt
    echo upgrade feito
    echo clique em qualquer tecla para continuar
    pause>nul
    goto menujogo6
) else (
    echo pontos insuficientes
)
echo clique em qualquer tecla para continuar
pause>nul
goto menujogo6

:clickjogo6
set /a pontos+=multiplicadorbruto
echo !pontos!>aqui8.txt
goto menujogo6

:jogo7
:menujogo7
cls
echo [1] sair para o menu dos jogos
echo [2] continuar para o jogo

choice /c 12 /n /m "digita o numero doq queres"

if errorlevel 2 goto menu2jogo7
if errorlevel 1 goto explicacao

:menu2jogo7
cls
set /p jajaja= digite o numero que quer q o jogo ache:
if !jajaja! GEQ 32768 (
echo erro: numero grande demais, escolha outro
echo clique em qualquer tecla para continuar 
pause>nul
goto menu2jogo7
) else (
goto menu3jogo7
)

:menu3jogo7
set jajaja2=%random%
echo !jajaja2!
if "!jajaja!"=="!jajaja2!" (
set /a moedas+=25
echo !moedas!>aqui2.txt
echo voce ganhou 25 moedas
echo clique em qualquer tecla para continuar
pause>nul
goto menujogo7
) else (
goto menu3jogo7
)