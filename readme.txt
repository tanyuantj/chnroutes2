vpn分流办法
1. 安装DNS server dnsmasq: brew install dnsmasq
2. 设置/usr/local/etc/dnsmasq.conf: 参考https://www.willnet.net/index.php/archives/345/
3. 按照https://github.com/felixonmars/dnsmasq-china-list设置服务器，注意install.sh里面sed命令mac os下有问题，"sed -i"改为"sed -i '' ",加单引号
4. 运行dnsmasq，也可以设置成系统服务
5. 在远程vpn服务器上把/etc/ipsec.conf的rightdns改成刚才安装的dns服务器，这个设置其实是设置了本地vpn连接的dns服务器，在系统里面改没有成功。
6. 运行ipup.sh把路由设置成本地网关，如192.168.1.1
7. 连接VPN实现分流