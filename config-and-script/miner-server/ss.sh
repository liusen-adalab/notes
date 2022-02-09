## 翻墙
  
# 安装 go 并配置环境变量
if  ! command -v go &> /dev/null
then
    sudo snap install go --classic
    go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-local
    echo "#######################################################################
    #export GOROOT=/usr/local/go
    #export PATH=$PATH:$GOROOT/bin
    #export PATH=$PATH:/usr/local/go/bin
    #go工作目录 ipfs shadowsocks
    export GOPATH=~/golang

    #go可执行文件目录
    export GOBIN=$GOPATH/bin

    # golang 代理
    export GO111MODULE=on
    export GOPROXY=https://goproxy.io
    #############################################################" >> ~/.bashrc
    . ~/.bashrc
fi

if [[ $1 == "set" ]]
then
    export http_proxy="socks5://127.0.0.1:1080"
    export https_proxy=$http_proxy
    export all_proxy=$http_proxy
elif [[ $1 == "unset" ]]
then
    unset http_proxy
    unset https_proxy
    unset all_proxy
elif [[ $1 == "kill" ]]
then
    unset http_proxy
    unset https_proxy
    unset all_proxy
    kill -9 $(pgrep -f shadowsocks-local)
else
    export http_proxy="socks5://127.0.0.1:1080"
    export https_proxy=$http_proxy
    export all_proxy=$http_proxy
    $GOBIN/shadowsocks-local -s 174.137.63.222 -p 8989 -k pass123456  -m aes-256-cfb -c config.json  -b 127.0.0.1 -l 1080 &
fi
