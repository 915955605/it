#!/bin/sh
yum -y install bzip2-devel libxml2-devel curl-devel db4-devel libjpeg-devel libpng-devel freetype-devel pcre-devel zlib-devel sqlite-devel libmcrypt-devel unzip bzip2
yum -y install mhash-devel openssl-devel
yum -y install libtool-ltdl libtool-ltdl-devel
PREFIX="/vhs/kangle/ext"
wget -c https://raw.githubusercontent.com/915955605/it/master/31/7.1/tpl_php7125.tar.bz2 -O tpl_php7125.tar.bz2
tar xjf tpl_php7125.tar.bz2
mv tpl_php7125 $PREFIX
rm -rf /tmp/*
/vhs/kangle/bin/kangle -r