# lede-vlmcsd-svn1107
a package for vlmcsd

```

自动完成如下操作：
1. srv-host=_vlmcs._tcp.lan,openwrt.lan,1688,0,100 添加到 /etc/dnsmasq.conf .
2. /etc/init.d/vlmcsd enable && /etc/init.d/vlmcsd start && /etc/init.d/dnsmasq restart

OK, 你的路由器下应该可以自动激活Windows或者Office了 :)
```

配套luci: [luci-app-vlmcsd](https://github.com/zshwq5/luci-app-vlmcsd.git "")
