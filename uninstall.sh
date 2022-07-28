set -e
if [ "$EUID" -ne 0 ];then
echo "Sorry, you currently don't have enough power to access system directories.
You need to be a half-god.";exit;fi
echo -n "E"
rm /usr/bin/yamvgen
echo -n "e"
rm -r /etc/yamvgen
echo "e"
rm -r /usr/share/yamvgen
echo "Uninstalled."