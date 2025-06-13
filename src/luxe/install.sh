apt update && apt-get install wget unzip libdbus-1-dev -y 

# install luxe engine
wget https://luxeengine-moduler.ams3.cdn.digitaloceanspaces.com/get/luxe_launcher-2025.1.1-linux.zip

mkdir -p /opt/luxe
DST=/opt/luxe
unzip -o luxe_launcher-2025.1.1-linux.zip -d $DST
rm luxe_launcher-2025.1.1-linux.zip
