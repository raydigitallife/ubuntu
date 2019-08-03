# ubuntu
ubuntu-first-run

## sudo no passwd
echo "ubuntu ALL = (root) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/ubuntu

## apt install
sudo apt install git vim mtr asciinema python3-pip fish openssh-server net-tools -y

## snap install
sudo snap install chromium
sudo snap install docker

## docker no sudo
sudo groupadd docker
sudo gpasswd -a ubuntu docker

## ubuntu tasksel 類GUI 安裝工具包，可快速在 server 環境安裝桌面環境
sudo apt install tasksel
sudo tasksel
