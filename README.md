# zabbix_fonts
修复zabbix中文乱码

原因：默认字体不支持中文乱码

1、下载微软雅黑

wget https://raw.githubusercontent.com/chenqing/ng-mini/master/font/msyh.ttf

 

2、查看默认字体

/usr/share/zabbix/include/defines.inc.php

ZBX_GRAPH_FONT_NAME graphfont.ttf
3、找到对应字体

ll /usr/share/zabbix/assets/fonts

lrwxrwxrwx 1 root root 33 Mar 19 12:58 graphfont.ttf -> /etc/alternatives/zabbix-web-font

4、查看链接的哪个字体

[root@BGPTO-200926-H7T5 fonts]# ll /etc/alternatives/zabbix-web-font

lrwxrwxrwx 1 root root 38 Mar 19 12:58 /etc/alternatives/zabbix-web-font -> /usr/share/fonts/dejavu/DejaVuSans.ttf

5、把下载微软雅黑放到对应目录

mv msyh.ttf /usr/share/fonts/dejavu/

6、修改默认字体

cd /etc/alternatives/ 

mv zabbix-web-font zabbix-web-font-bak

ln -s /usr/share/fonts/dejavu/msyh.ttf zabbix-web-font

 

7、刷新页面，已经好了
————————————————
版权声明：本文为CSDN博主「流星泪90」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
原文链接：https://blog.csdn.net/qq_22894935/article/details/115544995
