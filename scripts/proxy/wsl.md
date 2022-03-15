1. qv2ray 入站改为 0.0.0.0
2. wsl中关闭自动更新dns nameserver
```
 /etc/wsl.conf
[network]
generateResolvConf = false
```
3. /etc/resolv.conf中nameserver替换成8.8.8.8或者其他可用的dns服务器
4. 在~/.bashrc中添加如下内容
```
export hostip=$(ip route | grep default | awk '{print $3}')
export hostport=10808
alias proxy='
    export HTTPS_PROXY="socks5://${hostip}:${hostport}";
    export HTTP_PROXY="socks5://${hostip}:${hostport}";
    export ALL_PROXY="socks5://${hostip}:${hostport}";
    echo -e "Acquire::http::Proxy \"http://${hostip}:${hostport}\";" | sudo tee -a /etc/apt/apt.conf.d/proxy.conf > /dev/null;
    echo -e "Acquire::https::Proxy \"http://${hostip}:${hostport}\";" | sudo tee -a /etc/apt/apt.conf.d/proxy.conf > /dev/null;
'
alias unproxy='
    unset HTTPS_PROXY;
    unset HTTP_PROXY;
    unset ALL_PROXY;
    sudo sed -i -e '/Acquire::http::Proxy/d' /etc/apt/apt.conf.d/proxy.conf;
    sudo sed -i -e '/Acquire::https::Proxy/d' /etc/apt/apt.conf.d/proxy.conf;
'
```
5. 打开路径，允许 v2ray 访问公网和专用网
```
控制面板\系统和安全\Windows Defender 防火墙\允许的应用
```

6. 允许 wsl 访问宿主机
```
打开 "高级安全 Windows Defender 防火墙"
Launch Windows Defender Firewall via Control Panel.
Select "Advanced Settings" (on the left)
Right-click "Inbound Rules" and choose "New Rule..."
Choose "Custom" and click "Next"
Choose "All Programs" and click "Next"
Select the "ICMPv4" protocol type, then click "Customize..."
Choose "Specific ICMP types" and check "Echo Request" and click "OK", then "Next"
Choose "Any IP Address" or add specific addresses as you require for Local and Remote (in your case ), and click "Next"
Choose "Allow the connection" and click "Next"
Choose Public, Domain and Private and click "Next"
Give the rule a meaningful name and click "Finish"
```