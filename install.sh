set -e
if [ "$EUID" -ne 0 ];then
echo "Sorry, you currently don't have enough power to access system directories.
You need to be a half-god.";exit;fi
SOURS=$(dirname "$0")
echo -n "E"
cp $SOURS/yamvgen /usr/bin/yamvgen
chmod +x /usr/bin/yamvgen
echo -n "e"
if [[ ! -d /etc/yamvgen ]];then
mkdir /etc/yamvgen;fi
cp $SOURS/yamvgen.conf /etc/yamvgen/yamvgen.conf
echo "e"
if [[ ! -d /usr/share/yamvgen ]];then
mkdir /usr/share/yamvgen;fi
cp $SOURS/data/* /usr/share/yamvgen/
echo "Installed."