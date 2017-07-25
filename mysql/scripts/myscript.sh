#!/bin/sh

cd $1
if ! [ -e tmp ] ;then
  mkdir tmp
fi
chmod 777 tmp

scripts/mysql_install_db --port=3306 --socket=/Applications/mampstack-5.6.31-0/mysql/tmp/mysql.sock  --datadir=/Applications/mampstack-5.6.31-0/mysql/data --pid-file=/Applications/mampstack-5.6.31-0/mysql/data/mysqld.pid > /dev/null

if [ `uname -s` = "SunOS" ]; then
    U=`id|sed -e s/uid=//g -e s/\(.*//g`
else
    U=`id -u`
fi

if [ $U = 0 ]; then
   chown -R root .
   chgrp -R root .

   # External data directory - T3532
   cd /Applications/mampstack-5.6.31-0/mysql/data
   chown -R mysql .
   chgrp -R root .
   cd $1
fi



/Applications/mampstack-5.6.31-0/ctlscript.sh start mysql > /dev/null
sleep 10
bin/mysql -S /Applications/mampstack-5.6.31-0/mysql/tmp/mysql.sock -u root -e "UPDATE mysql.user SET Password=PASSWORD('$2') WHERE User='root';"
bin/mysql -S /Applications/mampstack-5.6.31-0/mysql/tmp/mysql.sock -u root -e "DELETE FROM mysql.user WHERE User='';"
bin/mysql -S /Applications/mampstack-5.6.31-0/mysql/tmp/mysql.sock -u root -e "FLUSH PRIVILEGES;"
