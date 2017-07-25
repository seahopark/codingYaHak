#!/bin/sh
echo $PATH | egrep "/Applications/mampstack-5.6.31-0/common" > /dev/null
if [ $? -ne 0 ] ; then
PATH="/Applications/mampstack-5.6.31-0/git/bin:/Applications/mampstack-5.6.31-0/sqlite/bin:/Applications/mampstack-5.6.31-0/php/bin:/Applications/mampstack-5.6.31-0/mysql/bin:/Applications/mampstack-5.6.31-0/apache2/bin:/Applications/mampstack-5.6.31-0/common/bin:$PATH"
export PATH
fi
echo $DYLD_FALLBACK_LIBRARY_PATH | egrep "/Applications/mampstack-5.6.31-0/common" > /dev/null
if [ $? -ne 0 ] ; then
DYLD_FALLBACK_LIBRARY_PATH="/Applications/mampstack-5.6.31-0/git/lib:/Applications/mampstack-5.6.31-0/sqlite/lib:/Applications/mampstack-5.6.31-0/mysql/lib:/Applications/mampstack-5.6.31-0/apache2/lib:/Applications/mampstack-5.6.31-0/common/lib:/usr/local/lib:/lib:/usr/lib:$DYLD_FALLBACK_LIBRARY_PATH"
export DYLD_FALLBACK_LIBRARY_PATH
fi

TERMINFO=/Applications/mampstack-5.6.31-0/common/share/terminfo
export TERMINFO
##### GIT ENV #####
GIT_EXEC_PATH=/Applications/mampstack-5.6.31-0/git/libexec/git-core/
export GIT_EXEC_PATH
GIT_TEMPLATE_DIR=/Applications/mampstack-5.6.31-0/git/share/git-core/templates
export GIT_TEMPLATE_DIR
GIT_SSL_CAINFO=/Applications/mampstack-5.6.31-0/common/openssl/certs/curl-ca-bundle.crt
export GIT_SSL_CAINFO

##### SQLITE ENV #####
			
##### GHOSTSCRIPT ENV #####
GS_LIB="/Applications/mampstack-5.6.31-0/common/share/ghostscript/fonts"
export GS_LIB
##### IMAGEMAGICK ENV #####
MAGICK_HOME="/Applications/mampstack-5.6.31-0/common"
export MAGICK_HOME

MAGICK_CONFIGURE_PATH="/Applications/mampstack-5.6.31-0/common/lib/ImageMagick-6.9.8/config-Q16:/Applications/mampstack-5.6.31-0/common/"
export MAGICK_CONFIGURE_PATH

MAGICK_CODER_MODULE_PATH="/Applications/mampstack-5.6.31-0/common/lib/ImageMagick-6.9.8/modules-Q16/coders"
export MAGICK_CODER_MODULE_PATH
SASL_CONF_PATH=/Applications/mampstack-5.6.31-0/common/etc
export SASL_CONF_PATH
SASL_PATH=/Applications/mampstack-5.6.31-0/common/lib/sasl2 
export SASL_PATH
LDAPCONF=/Applications/mampstack-5.6.31-0/common/etc/openldap/ldap.conf
export LDAPCONF
##### PHP ENV #####
PHP_PATH=/Applications/mampstack-5.6.31-0/php/bin/php
export PHP_PATH
##### MYSQL ENV #####

##### APACHE ENV #####

##### FREETDS ENV #####
FREETDSCONF=/Applications/mampstack-5.6.31-0/common/etc/freetds.conf
export FREETDSCONF
FREETDSLOCALES=/Applications/mampstack-5.6.31-0/common/etc/locales.conf
export FREETDSLOCALES
##### CURL ENV #####
CURL_CA_BUNDLE=/Applications/mampstack-5.6.31-0/common/openssl/certs/curl-ca-bundle.crt
export CURL_CA_BUNDLE
##### SSL ENV #####
SSL_CERT_FILE=/Applications/mampstack-5.6.31-0/common/openssl/certs/curl-ca-bundle.crt
export SSL_CERT_FILE
OPENSSL_CONF=/Applications/mampstack-5.6.31-0/common/openssl/openssl.cnf
export OPENSSL_CONF
OPENSSL_ENGINES=/Applications/mampstack-5.6.31-0/common/lib/engines
export OPENSSL_ENGINES


. /Applications/mampstack-5.6.31-0/scripts/build-setenv.sh
