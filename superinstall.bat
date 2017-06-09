@ECHO off

REM Installs standard programs for a regular user
IF "%1"=="-user" (choco install -y jre8
 choco install -y googlechrome
 choco install -y firefox
 choco install -y adobereader)

REM Installs standard programs for a technician
IF "%1"=="-tech" (choco install -y 7zip.install
choco install -y wireshark
choco install -y notepadplusplus.commandline
choco install -y putty.install
choco install -y virtualbox
choco install -y git.install
choco install -y nmap)

REM Installs programs that I like.
IF "%1"=="-dutch" (choco install -y keepass.install
choco install -y f.lux
choco install -y steam
choco install -y youtube-dl
choco install -y vlc
choco install -y livestreamer-twitch-gui
choco install -y livestreamer) 

REM Installs crap tons of games.
IF "%1"=="-games" (choco install -y steam
choco install -y 0ad
choco install -y aliengame
choco install -y hearthstone-deck-tracker-arena-helper
choco install -y assaultcube
choco install -y darksoulsmapviewer
choco install -y dolphin
choco install -y dosbox
choco install -y emulationstation.install
choco install -y epicgameslauncher
choco install -y foldit
choco install -y gamedownloader
choco install -y eveonline
choco install -y hearthstone-deck-tracker
choco install -y ioquake3.install
choco install -y minecraft
choco install -y multimc
choco install -y nestopia
choco install -y livestreamer-twitch-gui
choco install -y livestreamer
choco install -y mame
choco install -y nethack
)

REM Installs crap tons of developer tools/programming languages.
IF "%1"=="-dev" (choco install -y git.install
choco install -y git.commandline
choco install -y nodejs.commandline
choco install -y npm
choco install -y ActivePerl
choco install -y adb
choco install -y android-sdk
choco install -y autohotkey
choco install -y bluetoothcl
choco install -y windbg
choco install -y cemu
choco install -y eclipse
choco install -y erlang
choco install -y gimp
choco install -y golang
choco install -y wget
choco install -y grepwin
choco install -y hxd
choco install -y jre8
choco install -y lua
choco install -y notepadplusplus.install
choco install -y nodejs.install
choco install -y ollydbg
choco install -y putty.install
choco install -y ruby
choco install -y rufus
choco install -y sqlite-studio.portable
choco install -y squashfs
choco install -y tightvnc
choco install -y virtualbox
) 


REM Programs for everytime I have to go to someone else's house and scan their computer.
IF "%1"=="-troubleshoot" (
choco install -y adwcleaner
choco install -y ccleaner
choco install -y clamwin
choco install -y cpu-z
choco install -y crystaldiskinfo.install
choco install -y defraggler
choco install -y hdtune
choco install -y hwmonitor
choco install -y windirstat
) 

REM Installs chocolatey, but only really works if powershell is installed on the machine.
IF "%1"=="-install" (
@powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
)

REM Enables FIPS compliance in chocolatey. It's best to use this option immediately after a fresh install of chocolatey, otherwise some errors may occur.
IF "%1"=="-fips" (
choco feature enable useFipsCompliantChecksums
) else (
echo USAGE: %0 -[tech user dev games troubleshoot fips install])
