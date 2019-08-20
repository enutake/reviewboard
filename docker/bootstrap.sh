#!/bin/bash

#apacheを起動させる
# cp -r /root/apache2 /etc/
cp -r /root/php /etc/
service apache2 start

#mysqlを起動させる
find /var/lib/mysql/ -type f -exec touch {} \;
cp -r /root/mysql /etc/
service mysql start

#mysqlのデータを入れる
mysql -uroot mysql -e "grant all on *.* to takeyuki@'%' identified by 'yomogi46'";

/bin/bash
