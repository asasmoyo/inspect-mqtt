sed -i "s/archive.ubuntu.com/kambing.ui.ac.id/g" /etc/apt/sources.list
apt-get update
apt-get install -y build-essential git-core wget libc-ares-dev uuid-dev libssl-dev tshark
wget http://mosquitto.org/files/source/mosquitto-1.4.14.tar.gz -O /home/ubuntu/mosquitto.tar.gz
tar -xzvf /home/ubuntu/mosquitto.tar.gz -C /home/ubuntu/
mv /home/ubuntu/mosquitto-1.4.14 /home/ubuntu/mosquitto
cd /home/ubuntu/mosquitto && make install
