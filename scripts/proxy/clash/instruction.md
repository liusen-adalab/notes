## Command line
1. download clash from github release || 阿里云
    https://github.com/Dreamacro/clash/releases
2. start in current folder
    ./clash -d .
3. add alias to .bashrc
```
alias clash="./clash -d . &"
alias unclash="pkill clash"
alias proxy="export all_proxy=http://127.0.0.1:7890"
alias unproxy="unset all_proxy"
```