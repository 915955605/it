#!/bin/sh
yum -y install bzip2-devel libxml2-devel curl-devel db4-devel libjpeg-devel libpng-devel freetype-devel pcre-devel zlib-devel sqlite-devel libmcrypt-devel unzip bzip2
yum -y install mhash-devel openssl-devel
yum -y install libtool-ltdl libtool-ltdl-devel
yum -y remove libzip-devel
wget -c https://raw.githubusercontent.com/915955605/it/master/31/7.3/libzip-1.3.2.tar.gz -O libzip-1.3.2.tar.gz
tar xvf libzip-1.3.2.tar.gz
cd libzip-1.3.2
./configure
make -j 4
make install
mv -f /usr/lib64/libzip.so.5 /usr/lib64/libzip.so.5.bak
ln -s /usr/local/lib/libzip.so.5 /usr/lib64/libzip.so.5
PREFIX="/vhs/kangle/ext"
wget -c https://raw.githubusercontent.com/915955605/it/master/31/7.3/tpl_php730.tar.bz2 -O tpl_php730.tar.bz2
tar xjf tpl_php730.tar.bz2
mv tpl_php730 $PREFIX
rm -rf /tmp/*
/vhs/kangle/bin/kangle -r
