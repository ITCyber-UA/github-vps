# ::#region start

# poweshell:


scoop bucket add extras
scoop bucket add AntonOks  https://github.com/AntonOks/scoop-aoks
scoop bucket add versions
scoop bucket add hirsaeki https://github.com/hirsaeki/scoop-sup
scoop bucket add kkzzhizhou https://github.com/kkzzhizhou/scoop-zapps
scoop bucket add ACooper81 https://github.com/ACooper81/scoop-apps
scoop bucket add SayCV https://github.com/SayCV/scoop-cvp
scoop bucket add thscott https://github.com/thscott/scoop-bucket/
scoop bucket add versions
scoop bucket add backit https://github.com/batkiz/backit
scoop bucket add nonportable
scoop bucket add hoilc https://github.com/hoilc/scoop-lemon




# cmd:
scoop install curl wget aria2 nano neovim sudo

# wget https://aka.ms/getwinget
# Add-AppPackage -path .\getwinget
scoop install main/winget

# chocolatey admin install
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

scoop config aria2-warning-enabled false
# scoop install git
winget install --id Git.Git -e --source winget
scoop install AntonOks/Git-Credential-Manager-for-Windows-aoks
# sudo $env:USERPROFILE\scoop\apps\Git-Credential-Manager-for-Windows-aoks\current\git-credential-manager install

git config --global init.defaultBranch main
git config --global --add safe.directory '*'
sudo git config --system core.longpaths true
git config --global fetch.prune true
# git config --global credential.helper manager-core
# git config --global pull.rebase true
git config --global pull.rebase false
git config --global diff.colorMoved zebra
git config --global user.name "ifuad"
git config --global user.email "i.fuad.tm@gmail.com"


scoop install clink busybox ripgrep ag fzf
cmd /c "clink autorun install"
scoop install scoop-completion
scoop install main/clink-completions




echo @'
np=notepad++ $*
ip=ipconfig $*
hosts=notepad++ C:\Windows\System32\drivers\etc\hosts
aliases=notepad++ %LOCALAPPDATA%\clink\aliases
listpath=cmd /v:on /c "for %p in ("!path:;=" "!") do @echo %~p"
poweroff=shutdown -s -t 1
restart=shutdown -r -t 1 
cancell-shutdown=shutdown -a
videodownload=yt-dlp.exe --newline -i -o "%UserProfile%\Documents\%(title)s.%(ext)s" -f mp4 --ignore-config --hls-prefer-native $*
cmdadmin=nircmdc hide elevate cmd /k "cd /d %cd%"
fs-github=(if exist "%UserProfile%\git-repos\InfiniDrive"\ (cd "%UserProfile%\git-repos\InfiniDrive") else (cd "%UserProfile%\Desktop\files\edev\github\InfiniDrive")) && pipenv run python InfiniDrive.py $*
upload-file-transfersh=curl --progress-bar --upload-file "$*" https://transfer.sh/"$*" | tee /dev/null";
python="%UserProfile%\scoop\shims\pyenv" exec python $*
scoopclean=scoop cache rm *
scoopremove=scoop cache rm $* && scoop uninstall $*
oraclessh=ssh -i "%UserProfile%\Downloads\ssh-key-2022-06-16.key" ubuntu@152.67.72.183 $*
oracleportfwd_1000=ssh -i "C:\Users\Fuad\Downloads\ssh-key-2022-06-16.key" ubuntu@152.67.72.183 -N -L 1000:127.0.0.1:$*
code-server-1000=ssh -i "C:\Users\Fuad\Downloads\ssh-key-2022-06-16.key" ubuntu@152.67.72.183 -N -L 1000:127.0.0.1:1000
sf-code-server=nircmd exec hide ssh -i "C:\Users\Fuad\Downloads\ssh-key-2022-06-16.key" ubuntu@152.67.72.183 -N -L 1000:127.0.0.1:8080
testpnl=node %UserProfile%\git-repos\tradernet-scripts\nodejs\tv-tn-node-worker\testPNL.js $*
testpnloracle=ssh -i "%UserProfile%\Downloads\ssh-key-2022-06-16.key" ubuntu@152.67.72.183 ~/.local/share/nvm/v14.15.4/bin/node ~/Desktop/git-repos/tradernet-scripts/nodejs/tv-tn-node-worker/testPNL.js $*
code-csharp=code "%USERPROFILE%\git-repos\technonews"
code-python=code "%USERPROFILE%\git-repos\tradernet-scripts"
dotnet="%UserProfile%\scoop\apps\dotnet6-sdk\current\dotnet.exe" $*
dotnetlts-release-url=curl -s https://dotnetcli.blob.core.windows.net/dotnet/release-metadata/releases-index.json | jq .\"releases-index\" | jq .[] | jq select(.\"support-phase\"==\"lts\") | jq -c "select(.\"channel-version\" | contains(\"$1\"))" | jq .\"releases.json\"
powershell2=C:\Program Files\PowerShell-7.2.2-win-x64\pwsh.exe $*
'@ > $env:LOCALAPPDATA\clink\aliases
cmd /c "clink autorun install '%UserProfile%\scoop\apps\clink\current\clink.bat inject --autorun && doskey /macrofile=%LOCALAPPDATA%\clink\aliases'"
clink set autosuggest.enable true
clink set history_io 1
clink set clink.autoupdate false


scoop install gh
# gh auth login
# gh extension install redraw/gh-install
# gh install jesseduffield/lazygit
# gh install TaKO8Ki/gobang   # for mysql,postgresql,sqllit
# gh install infely/mngr      # for mongodb
# gh install sigmaSd/Eltrafico # netlimiter linux alternative
# gh install asdf-vm/asdf # nix for dev packages
# gh release download --archive=zip --repo teeotsa/windows-11-debloat
# scoop install versions/lightshot
scoop install extras/lazygit
# scoop install hirsaeki/android-platform-tools
# scoop install kkzzhizhou/NoxPlayer
scoop install extras/windirstat

sudo choco install winbtrfs
sudo choco install ext2fsd
# ::#endregion

# ::#region scoop directory search links
scoop install scoop-search
wget https://raw.githubusercontent.com/zhoujin7/scoop-search/master/scoopSearch.ps1
Install-Module -Force ps2exe 
Invoke-ps2exe .\scoopSearch.ps1 $env:USERPROFILE\scoop\shims\scoopSearch.exe
echo path = $env:USERPROFILE\scoop\shims\scoopSearch.exe | tee $env:USERPROFILE\scoop\shims\scoopSearch.shim
# ::#endregion


# ::#region apps
scoop install extras/notepadplusplus googlechrome vlc neovim superf4 meld jq
# scoop install vscode
# winget install -e --id Microsoft.VisualStudioCode
scoop install thscott/nircmd-both 

# scoop install ACooper81/MicrosoftVisualStudioCommunity2022-Install
# winget install --id Microsoft.VisualStudio.2022.Community -e --source winget

sudo choco install visualstudio2019buildtools
sudo choco install visualstudio2022buildtools visualstudio2022-workload-vctools
winget install --id=Microsoft.VisualStudio.2019.BuildTools  -e
scoop install backit/pathman 
scoop install gtools
pathed /USER /APPEND "%ProgramFiles%\Microsoft Visual Studio\2022\Community\Msbuild\Current\Bin"
setx VCTargetsPath "C:\Program Files\Microsoft Visual Studio\2022\Community\MSBuild\Current"
# sudo choco install files 

scoop install flux watchexec 
# ::#endregion

# ::#region development

scoop install nvm pyenv poetry
pyenv install 3.7.2
pyenv global 3.7.2
pyenv exec pip install poetry
pyenv exec pip install pipenv
pyenv rehash
scoop install backit/pathman 
scoop install gtools
pathed /USER /APPEND $env:USERPROFILE\AppData\Roaming\Python\Python37\Scripts
pathed /USER /APPEND $env:USERPROFILE\scoop\apps\pyenv\current\pyenv-win\versions\3.7.2\Scripts
poetry config virtualenvs.in-project true
python -m pip install --upgrade pip
scoop install versions/python27

#TODO dotnet
# scoop install versions/dotnet6-sdk versions/dotnet3-sdk versions/dotnet5-sdk
# New-Item -ItemType SymbolicLink -Path "c:\Program` Files\dotnet\sdk\3.1.421" -Target "%UserProfile%\scoop\apps\dotnet3-sdk\current\sdk\3.1.421"
# New-Item -ItemType SymbolicLink -Path "c:\Program` Files\dotnet\sdk\6.0.301" -Target "%UserProfile%\scoop\apps\dotnet6-sdk\current\sdk\6.0.301"
# New-Item -ItemType SymbolicLink -Path "c:\Program` Files\dotnet\sdk\5.0.408" -Target "%UserProfile%\scoop\apps\dotnet5-sdk\current\sdk\5.0.408"

# setx DOTNET_ROOT "%UserProfile%/scoop/apps/dotnet6-sdk/current"
# winget install -e --id Microsoft.dotnet
# winget show --versions "Microsoft.dotnet"
# # winget show "Microsoft.dotnet" --versions
# winget install -v "3.1.410.15736" "Microsoft.dotnet"
# setx DOTNET_ROOT "%ProgramFiles%\dotnet\sdk\3.1.410"
# scoop install scriptcs
#

echo @'
echo root: $env:USERPROFILE\AppData\Roaming\nvm  
path: C:\Program Files\nodejs 
'@ > c:\settings.txt
nvm install latest
nvm install 14.15.4
nvm on
npm install yarn -g
yarn config set network-timeout 600000 -g
npm config set -g msvs_version 2019
npm config set -g msbuild_path "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\MSBuild\Current\Bin\MSBuild.exe"
# npm install --g --production windows-build-tools

scoop install php
scoop install composer
composer config -g -- disable-tls true
# add line to php --ini to enable ssl for composer: extension=php_openssl.dll
scoop install php-xdebug


# backit/pathedit
# pathed /REMOVE "pyenv which poetry"
# pathed /APPEND "pyenv which poetry"



winget install --id=ProtonTechnologies.ProtonVPN -e

scoop bucket add Syndim https://github.com/Syndim/scoop-bucket && scoop install Syndim/bore # ngrok alternative for tcp rdp # usage for rdp: bore local -p 3389 --to bore.pub 3389

echo @'
start /b bore local -p 3389 --to bore.pub 3389 >/dev/null &
'@ > .\bore-hidden.bat
.\bore-hidden.bat

# ::#endregion


# ::#region work dev
scoop bucket add yzlc https://github.com/yzlc/scoop
scoop install yzlc/fortiClient

scoop bucket add b-palaniappan https://github.com/b-palaniappan/scoop-bala
scoop install b-palaniappan/robo3t

wget https://www.firewall.cx/downloads/cisco-tools-a-applications/40-cisco-vpn-client-64bit-version/file.html
wget https://www.firewall.cx/downloads/cisco-tools-a-applications/170-sonicwall-vpn-clent-1/file.html
# cisco vpn client fix "The remote peer is no longer responding."
# Disabling Internet Connection Sharing service 
# Press Window + R to open run command
# Type in services.msc and press enter or OK
# Search for Internet Connection Sharing service, stop the service and right on it and disable it.

# After this you need to make registry changes
# 1. Open Registry editor regedit in Run prompt 
# 2. Browse to the Registry Key HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CVirtA 
# Computer\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\CVirtA
# 3. Select (double Click) the Display Name to modify, and remove the leading characters from the value data value as shown below:

# i.) Below is the value for Display name:
# "@oem8.inf,%CVirtA_Desc%;Cisco Systems VPN Adapter for 64-bit Windows”
# (original lenovo ideapad flex 5)
# @oem84.inf,%CVirtA_Desc%;Cisco Systems VPN Adapter for 64-bit Windows
# ii.) Change it to the following by removing the leading characters from the Value -->
# "Cisco Systems VPN Adapter for 64-bit Windows"


# ::#endregion

choco install choco-cleaner
dos2unix.exe $env:USERPROFILE/scoop/apps/pyenv/current/pyenv-win/shims/python3
