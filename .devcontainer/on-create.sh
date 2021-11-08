#!/bin/bash 
 
echo "on-create start" >> ~/status
 
# install dapr cli
wget -q https://raw.githubusercontent.com/dapr/cli/master/install/install.sh -O - | /bin/bash
 
# initialize dapr
dapr init

# Fix minikube permissions
sudo chown -R $USER $HOME/.minikube; chmod -R u+wrx $HOME/.minikube

echo "on-create complete" >> ~/status
