#!/bin/sh

# Google Cloud Shell Editor

sudo apt update
sudo apt full-upgrade -y

# required 
sudo apt install zsh mtr

# monitor
sudo apt install bmon -y

# install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install helm repository
helm repo add stable https://charts.helm.sh/stable
helm repo add bitnami https://charts.bitnami.com/bitnami
helm repo add elastic https://helm.elastic.co
helm repo add eks https://aws.github.io/eks-charts
helm repo update

# install awscli-v2
cd ~ ; curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" ; unzip awscliv2.zip
sudo ~/aws/install ; rm -rf ~/aws
aws --version

# install npm & aws-cdk
sudo npm install --global npm
sudo npm install --global typescript
sudo npm install --global aws-cdk
# sudo npm install --global @aws-cdk/aws-iam @aws-cdk/aws-ec2 @aws-cdk/aws-ecs @aws-cdk/aws-ecr @aws-cdk/aws-eks

# install aws ecs copilot
# sudo curl -Lo /usr/local/bin/copilot https://github.com/aws/copilot-cli/releases/latest/download/copilot-linux && sudo chmod +x /usr/local/bin/copilot && copilot -v


# clean
sudo apt autoremove --purge -y
sudo apt autoclean
sudo sync

