

scoop bucket add extras

scoop install git
scoop install curl wget
scoop install aria2 neovim

scoop bucket add Syndim https://github.com/Syndim/scoop-bucket && scoop install Syndim/bore # ngrok alternative for tcp rdp # usage for rdp: bore local -p 3389 --to bore.pub 3389

bore local -p 3389 --to bore.pub 3389 >/dev/null &