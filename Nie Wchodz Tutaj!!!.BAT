@echo off
title Chrome Gold (32-Bit) DEMO	
color 0A

:menu
echo #################################
echo ##Witaj w Systemie Chrome Gold!##
echo #################################
echo.
echo.
echo.
echo 1. Wlacz Komputer
echo 2. Wylacz Komputer
set /p wybieram:={1;2}
if %wybieram:%==1 goto gra
if %wybieram:%==2 goto exit
if %wybieram:%==3 goto error1
if %wybieram:%==4 goto error2


:exit
exit


:error1
echo Nie Moszesz Wpisac 3 Bo Poniewasz
echo.
echo Nie Ma Takiej Liczby
ping localhost-n 3 >nul
cls
goto start


:error2
echo Nie Moszesz Wpisac 4 Bo Poniewasz
echo.
echo Nie Ma Takiej Liczby
ping localhost-n 3 >nul
cls
goto start


:gra
cls
echo Wpisz Nazwe Uzytkownika
set /p "uzytkownik=>> "
cls
echo Wpisz Haslo
set /p "haslo=>> "
cls
echo Czy Nazwa Uzytkownika: %uzytkownik% z Haslem: %haslo%  Moze Byc?
echo.
echo.
echo.
echo 1. Tak
echo 2. Nie, Chce To zmienic
set /p wybieram:={1;2}
if %wybieram:%==1 goto gra1
if %wybieram:%==2 goto gra


:gra1
cls
echo #########################################################################
echo #    1                                                                  #
echo #  Google Chrome                                                        #
echo #                                                                       #
echo #                2                                                      #
echo #            Strony                                                     #
echo #                                                                       #
echo #                 3                                                     #
echo #              AVG AntyVirus Free                                       #
echo #                                                                       #
echo #   7 Kosz                                                              #
echo #                                                                       #
echo #                                                                       #
echo #                                  4                                    #
echo #  5                              Ten Komputer                          #
echo # Informacje...                                                         #
echo #                                                                       #
echo #                                                                       #
echo #                                                                       #
echo #                                                                       #
echo #                                                                       #
echo #                                                                       #
echo #                                                                       #
echo #                                                                       #
echo #                                                                       #
echo # 6 Wylacz                                                              #
echo #########################################################################
set /p wybieram:={1;2;3;4;5;6;7}
if %wybieram:%==1 goto chrome
if %wybieram:%==2 goto strony
if %wybieram:%==3 goto avg
if %wybieram:%==4 goto komp
if %wybieram:%==5 goto informacje
if %wybieram:%==6 goto exit
if %wybieram:%==7 goto koko


:chrome
cls
echo Czy na pewno chcesz Aby Odworzyc Google Chrome? Napisz tak lub nie po malymich Literach
set /p "cho=>"
if %cho%==tak start www.google.pl
if %cho%==nie goto gra1



:strony
cls
echo W Jakiej stronie Chcesz Sie Odnalesc?
echo.
echo.
echo.
echo 1. google.pl
echo 2. youtube.com
echo 3. facebook.com
echo 4. onet.pl
echo 5. yahoo.com
set /p "cho=>"
if %cho%==1 start www.google.pl
if %cho%==2 start www.youtube.com
if %cho%==3 start www.facebook.com
if %cho%==4 start www.onet.pl
if %cho%==5 start www.yahoo.com



:avg
cls
echo Nie Moszesz kozystac z Aplikacji AVG AntyVirus Free Bo poniewasz Masz Wersje 32-Bit.
echo Nacisnij Dowolny Przycisk Klawiatury
pause>nul
goto gra1


:komp
cls
echo Dysk lokalny (C:)                          Dane (D:)
echo 10GB+++++--- Pozostalo 30GB              4GB +++++------ Pozostalo 80GB
echo Nacisnij dowolny przycisk aby wrocic do sytemu
pause>nul
goto start



:informacje
cls
echo Informacje Uzytkownika 
echo.
echo.
echo Nazwa uzytkownika: %uzytkownik
echo Haslo: %haslo%
echo.
echo.
echo Czy Chcesz zmienic Konto?
echo 1. Tak
echo 2. Nie
set /p wybieram:={1;2}
if %wybieram:%==1 goto zmien1
if %wybieram:%==2 goto gra1




:koko
cls
echo Nie Masz Nic w koszu 
echo Nacisnij enter
pause>nul
goto start
pause