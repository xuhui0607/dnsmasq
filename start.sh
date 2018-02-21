#!/bin/sh

#创建文件夹
mkdir -p /etc/storage/dnsmasq/dns/conf
##下载hosts规则
cd /etc/storage/dnsmasq/dns
wget --no-check-certificate https://raw.githubusercontent.com/vokins/yhosts/master/hosts -O hosts
sed -i -e '/gay\|uvwxyz\|XiaoQiang\|alfredapp\|dxomark/d' -i -e "1 i\## Downloaded：$(date "+%Y-%m-%d %H:%M:%S")" hosts

#下载dnsmasq规则
cd /etc/storage/dnsmasq/dns/conf
wget --no-check-certificate https://raw.githubusercontent.com/googlehosts/hosts/master/hosts-files/dnsmasq.conf -O dnsmasq.conf;sed -i "1 i\## Downloaded：$(date "+%Y-%m-%d %H:%M:%S")" dnsmasq.conf
wget --no-check-certificate https://raw.githubusercontent.com/vokins/yhosts/master/dnsmasq/ip.conf -O ip.conf;sed -i "1 i\## Downloaded：$(date "+%Y-%m-%d %H:%M:%S")" ip.conf
wget --no-check-certificate https://raw.githubusercontent.com/vokins/yhosts/master/dnsmasq/union.conf -O union.conf;sed -i "1 i\## Downloaded：$(date "+%Y-%m-%d %H:%M:%S")" union.conf
wget --no-check-certificate https://raw.githubusercontent.com/xuhui0607/dnsmasq/master/dnslb -O /etc/storage/dnsmasq/dns/dnslb;sed -i "1 i\## Downloaded：$(date "+%Y-%m-%d %H:%M:%S")" /etc/storage/dnsmasq/dns/dnslb
#重启dnsmasq
restart_dhcpd

