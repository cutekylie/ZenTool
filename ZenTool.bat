:: Menu Section ---------------------------------------------------------------
@ECHO OFF

:Menu

@ECHO OFF
cls
ECHO  _____            _____           _
ECHO !__  /___ _ __   !_   _!__   ___ ! !
ECHO   / // _ \ '_ \    ! !/ _ \ / _ \! !
ECHO  / /!  __/ ! ! !   ! ! (_) ! (_) ! !
ECHO /____\___!_! !_!   !_!\___/ \___/!_!
ECHO.
ECHO   1) Browser  2) Network  3) Utils
ECHO               0) Exit
ECHO.

set /p choose=Choose a number: 

if "%choose%"=="1" goto Browser
if "%choose%"=="2" goto Network
if "%choose%"=="3" goto Utils
if "%choose%"=="0" exit

:: -------------------------------------------------------------------------------

:: Browser Section ---------------------------------------------------------------
:Browser

@ECHO OFF
cls
ECHO  _____            _____           _
ECHO !__  /___ _ __   !_   _!__   ___ ! !
ECHO   / // _ \ '_ \    ! !/ _ \ / _ \! !
ECHO  / /!  __/ ! ! !   ! ! (_) ! (_) ! !
ECHO /____\___!_! !_!   !_!\___/ \___/!_!
ECHO.
ECHO   1) Zen      2) Firefox  3) Waterfox
ECHO               0) Menu
ECHO.

set /p choose=Choose a number: 

if "%choose%"=="1" goto Zen
if "%choose%"=="2" goto Firefox
if "%choose%"=="3" goto Waterfox
if "%choose%"=="0" goto Menu

:Zen
winget install --id Zen-Team.Zen-Browser
cls
goto Browser

:Firefox
winget install -e --id Mozilla.Firefox
cls
goto Browser

:Waterfox
winget install -e --id Waterfox.Waterfox
cls
goto Browser

:: -------------------------------------------------------------------------------

:: Network Section ---------------------------------------------------------------
:Network

@ECHO OFF
cls
ECHO  _____            _____           _
ECHO !__  /___ _ __   !_   _!__   ___ ! !
ECHO   / // _ \ '_ \    ! !/ _ \ / _ \! !
ECHO  / /!  __/ ! ! !   ! ! (_) ! (_) ! !
ECHO /____\___!_! !_!   !_!\___/ \___/!_!
ECHO.
ECHO   1) Discord  2) Steam    3) Spotify
ECHO   4) Ayugram  0) Menu
ECHO.

set /p choose=Choose a number: 

if "%choose%"=="1" goto Discord
if "%choose%"=="2" goto Steam
if "%choose%"=="3" goto Spotify
if "%choose%"=="4" goto Ayugram
if "%choose%"=="0" goto Menu

:Discord
winget install -e --id Discord.Discord
cls
goto Network

:Steam
winget install -e --id Valve.Steam
cls
goto Network

:Spotify
winget install Spotify.Spotify
cls
goto Network

:Ayugram
winget install RadolynLabs.AyuGramDesktop
cls
goto Network

:: -------------------------------------------------------------------------------

:: Utils Section -----------------------------------------------------------------
:Utils

@ECHO OFF
cls
ECHO  _____            _____           _
ECHO !__  /___ _ __   !_   _!__   ___ ! !
ECHO   / // _ \ '_ \    ! !/ _ \ / _ \! !
ECHO  / /!  __/ ! ! !   ! ! (_) ! (_) ! !
ECHO /____\___!_! !_!   !_!\___/ \___/!_!
ECHO.
ECHO   1) VSCodium 2) 7-Zip    3) VLC
ECHO   4) Nvidia   5) MAS
ECHO               0) Menu
ECHO.

set /p choose=Choose a number: 

if "%choose%"=="1" goto VSCodium
if "%choose%"=="2" goto 7z
if "%choose%"=="3" goto VLC
if "%choose%"=="4" goto NVIDIA
if "%choose%"=="5" goto MAS
if "%choose%"=="0" goto Menu

:VSCodium
winget install -e --id VSCodium.VSCodium
cls
goto Utils

:7z
winget install -e --id 7zip.7zip
cls
goto Utils

:VLC
winget install -e --id VideoLAN.VLC
cls
goto Utils

:NVIDIA
winget install -e --id TechPowerUp.NVCleanstall
cls
goto Utils

:MAS
powershell -Command "irm https://get.activated.win | iex"
cls
goto Utils

:: -------------------------------------------------------------------------------
