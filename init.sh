#!/bin/bash -e


sudo apt-get update --allow-releaseinfo-change
sudo apt-get install -y build-essential cmake apt-transport-https ca-certificates curl gnupg2 \
  software-properties-common dirmngr unzip git expect jq lsb-release fail2ban cryptsetup xfsprogs ufw \
  libreadline-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev \
  libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev

wget -c https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tar.xz
tar -Jxvf Python-3.10.0.tar.xz
cd Python-3.10.0
./configure --enable-optimizations
sudo make altinstall
sudo update-alternatives --install /usr/bin/python python /usr/local/bin/python3.10 1
sudo update-alternatives --install /usr/bin/pip pip /usr/local/bin/pip3.10 1

# Install docker
curl -sSL https://get.docker.com/ | CHANNEL=stable sh
systemctl enable --now docker
sudo apt update
sudo apt install docker-compose-plugin
echo "[*] Installed dependencies!"


sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow 22,25,80,110,143,443,465,587,993,995,4190/tcp
sudo ufw enable

