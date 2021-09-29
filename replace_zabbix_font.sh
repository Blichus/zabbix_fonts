#!/bin/bash
echo "下载微软雅黑字体"
wget -O https://raw.githubusercontent.com/chenqing/ng-mini/master/font/msyh.ttf /usr/share/fonts/dejavu/msyh.ttf
echo "备份原软链接"
mv /etc/alternatives/zabbix-web-font /etc/alternatives/zabbix-web-font-bak
echo "新建软链接"
ln -s /usr/share/fonts/dejavu/msyh.ttf /etc/alternatives/zabbix-web-font