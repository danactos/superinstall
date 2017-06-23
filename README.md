# SuperInstall
## Combination of Chocolatey and Computer Software Management 


| Table of Contents   | What they do             |
|:-------------------:|:-------------------------|
| InstallChocolatey   | Installs Chocolatey      |
| superinstall.bat    | Install Software         |

# Dependencies
Powershell: Note most windows come with powershell preinstalled. To check type powershell in CMD, if a powershell terminal appeares you have powershell. If not install powershell.


## Instructions

### Powershell
Run the InstallChocolatey.ps1
### CMD
Run the InstallChocolatey.bat


# optional commands

| Command | What they do  |
|:---:|:---|
| -fips   | Enables FIPS compliance in chocolatey. It's best to use this option immediately after a fresh install of chocolatey, otherwise some errors may occur.|
| -install| Install chocolatey using the InstallChocolatey.bat|

Cannot run both optional commands together.

# superinstall
installs a list of programs for specific needs. To install a specific subset, use options listed down below.

## Installs standard programs for a regular user
### option: -user     
- jre8
- googlechrome
- firefox
- adobereader

## Installs standard programs for a technician
### option: -tech
- 7zip. 
- wireshark
- notepadplusplus.commandline
- putty. 
- virtualbox
- git. 
- nmap

## Installs crap tons of games.
### option: -games
- steam
- 0ad
- aliengame
- hearthstone-deck-tracker-arena-helper
- assaultcube
- darksoulsmapviewer
- dolphin
- dosbox
- emulationstation. 
- epicgameslauncher
- foldit
- gamedownloader
- eveonline
- hearthstone-deck-tracker
- ioquake3. 
- minecraft
- multimc
- nestopia
- livestreamer-twitch-gui
- livestreamer
- mame
- nethack


## Installs crap tons of developer tools/programming languages.
### option: -dev
- git. 
- git.commandline
- nodejs.commandline
- npm
- ActivePerl
- adb
- android-sdk
- autohotkey
- bluetoothcl
- windbg
- cemu
- eclipse
- erlang
- gimp
- golang
- wget
- grepwin
- hxd
- jre8
- lua
- notepadplusplus. 
- nodejs. 
- ollydbg
- putty. 
- ruby
- rufus
- sqlite-studio.portable
- squashfs
- tightvnc
- virtualbox
 


## Programs for everytime I have to go to someone else's house and scan their computer.
### option: -troubleshoot
- adwcleaner
- ccleaner
- clamwin
- cpu-z
- crystaldiskinfo. 
- defraggler
- hdtune
- hwmonitor
- windirstat

## examples:

### optional commands

    superinstall.bat -install
    superinstall.bat -fips

### superinstall

    superinstall.bat -user

### custom

    template to make custom installations.
    use programs from the list of programs on the https://chocolatey.org/packages

### example template

```cmd
    IF "%1"=="-customname" 
    (
    choco install -y customprogram
    choco install -y customprogram
    )
```

# Hash superinstall.bat :trollface: :squirrel:
##Algorithm : SHA512
###Hash : 
59A125E3974E387BD7BC8727FB634F9DFEB1CBBE142B8495F4589E89D1CB1B76F3D4952ACD360D878120484EF3A852D6DD8C5F5114DE2AFE2BCBD6D72F163D3A