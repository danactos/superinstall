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
-jre8
-googlechrome
-firefox
-adobereader

## Installs standard programs for a technician
### option: -tech
-7zip. 
-wireshark
-notepadplusplus.commandline
-putty. 
-virtualbox
-git. 
-nmap

## Installs programs that I like.
### option: -dutch
-keepass. 
-f.lux
-steam
-youtube-dl
-vlc
-livestreamer-twitch-gui
-livestreamer

## Installs crap tons of games.
### option: -games
-steam
-0ad
-aliengame
-hearthstone-deck-tracker-arena-helper
-assaultcube
-darksoulsmapviewer
-dolphin
-dosbox
-emulationstation. 
-epicgameslauncher
-foldit
-gamedownloader
-eveonline
-hearthstone-deck-tracker
-ioquake3. 
-minecraft
-multimc
-nestopia
-livestreamer-twitch-gui
-livestreamer
-mame
-nethack


## Installs crap tons of developer tools/programming languages.
### option: -dev
-git. 
-git.commandline
-nodejs.commandline
-npm
-ActivePerl
-adb
-android-sdk
-autohotkey
-bluetoothcl
-windbg
-cemu
-eclipse
-erlang
-gimp
-golang
-wget
-grepwin
-hxd
-jre8
-lua
-notepadplusplus. 
-nodejs. 
-ollydbg
-putty. 
-ruby
-rufus
-sqlite-studio.portable
-squashfs
-tightvnc
-virtualbox
 


## Programs for everytime I have to go to someone else's house and scan their computer.
### option: -troubleshoot
-adwcleaner
-ccleaner
-clamwin
-cpu-z
-crystaldiskinfo. 
-defraggler
-hdtune
-hwmonitor
-windirstat

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

# Hash
Algorithm: SHA512
Hash: D51DD98DDB1E10FD7C7AC76F63961AF5098A6E92421F55F7C460C9912B69EA27592288EFB6DAB9FD07C67A9B5DAAFCC3A1451067963463CC8B37DE001AFD18A7