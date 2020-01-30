# ubuntu
ubuntu-first-run

## sudo no password, user = ubuntu
echo "ubuntu ALL = (root) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/ubuntu

## apt install
sudo apt install git vim mtr asciinema python3-pip openssh-server net-tools -y

## snap install
sudo snap install chromium
sudo snap install docker

## docker no sudo
sudo groupadd docker
sudo gpasswd -a ubuntu docker

## ubuntu tasksel 類 GUI 安裝工具, 可快速在 server 環境安裝桌面環境或其它套件
sudo apt install tasksel
sudo tasksel
