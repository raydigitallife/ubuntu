# ubuntu
ubuntu-first-run

## sudo no passwd
echo "ubuntu ALL = (root) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/ubuntu

## apt install
sudo apt install git vim mtr asciinema python3-pip fish openssh-server -y

## snap install
sudo snap install chromium
sudo snap install docker

## docker no sudo
sudo groupadd docker
sudo gpasswd -a ubuntu docker

## ubuntu server install tasksel
sudo apt install tasksel

