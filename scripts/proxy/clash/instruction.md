1. github release || 阿里云
    https://github.com/Dreamacro/clash/releases
2. start in current folder
    ./clash -d .
3. alias
```
alias clash="./clash -d . &"
alias unclash="pkill clash"
alias proxy="export http_proxy=http://127.0.0.1:7890 && export https_proxy=http://127.0.0.1:7890"
alias unproxy="unset http_proxy https_proxy"
```