#!/bin/sh

# sudo no password, user = ubuntu
# echo "ubuntu ALL = (root) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/ubuntu

sudo apt update
sudo apt full-upgrade -y
sudo apt install \
zip zsh git vim mtr npm whois asciinema python3-pip openssh-server net-tools docker.io docker-compose tasksel ntpdate glances bmon -y

# install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# enable docker service
sudo systemctl enable docker.service

# run docker no sudo
sudo groupadd docker
sudo gpasswd -a ubuntu docker

# install kubectl
curl -LO https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
kubectl version

# install eksctl
curl --silent --location "https://github.com/weaveworks/eksctl/releases/download/latest_release/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/local/bin
eksctl version

# install helm
curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
helm version

# install helm repository
helm repo add stable https://kubernetes-charts.storage.googleapis.com
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add elastic https://helm.elastic.co
helm repo add eks https://aws.github.io/eks-charts
helm repo update

# get awscli-v2
cd ~ ; curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" ; unzip awscliv2.zip
# install
sudo ~/aws/install
# show version
aws --version
# remove archived file
rm -rf ~/aws

# install npm & aws-cdk
sudo npm install --global npm
sudo npm install --global typescript
sudo npm install --global aws-cdk
# sudo npm install --global @aws-cdk/aws-iam @aws-cdk/aws-ec2 @aws-cdk/aws-ecs @aws-cdk/aws-ecr @aws-cdk/aws-eks

# clean
sudo apt autoremove --purge -y
sudo apt autoclean
sudo sync
