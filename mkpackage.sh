echo "Bitte warten... Please wait..."
mkdir package
cd package
mkdir etc
mkdir etc/simpsh-httpd
mkdir usr
mkdir usr/bin
mkdir usr/share
cp -r "$1" usr/share/simpsh-httpd
echo 'cd /usr/share/simpsh-httpd
./main.sh' > usr/bin/simpsh-httpd
echo 'cd /usr/share/simpsh-httpd/
./start-socat.sh' > usr/bin/simpsh-httpd-socat
mv usr/share/simpsh-httpd/config.sh etc/simpsh-httpd
ln -sf etc/simpsh-httpd/config.sh usr/share/simpsh-httpd/config.sh
chmod -R +x .
echo "Fertig! Done!"