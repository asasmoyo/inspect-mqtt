sed -i "s/us.archive.ubuntu.com/kambing.ui.ac.id/g" /etc/apt/sources.list
apt-get update
apt-get install -y wget git-core
wget https://storage.googleapis.com/golang/go1.9.1.linux-amd64.tar.gz -O /home/ubuntu/go.tar.gz
tar -xzvf /home/ubuntu/go.tar.gz -C /home/ubuntu
export GOPATH=/home/ubuntu/gopath
grep -qF "export GOPATH=${GOPATH}" /home/ubuntu/.bashrc || echo "export GOPATH=${GOPATH}" >> /home/ubuntu/.bashrc
grep -qF "export PATH=\$PATH:/home/ubuntu/go/bin:${GOPATH}/bin" /home/ubuntu/.bashrc || echo "export PATH=\$PATH:/home/ubuntu/go/bin:${GOPATH}/bin" >> /home/ubuntu/.bashrc
/home/ubuntu/go/bin/go get github.com/krylovsk/mqtt-benchmark

