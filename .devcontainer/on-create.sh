#!/bin/bash 
 
echo "on-create start" >> ~/status
 
# install dapr cli
wget -q https://raw.githubusercontent.com/dapr/cli/master/install/install.sh -O - | /bin/bash
 
# initialize dapr
dapr init

# Fix minikube permissions
sudo chown -R $USER $HOME/.minikube; chmod -R u+wrx $HOME/.minikube

# Install Protobuf compiler
PROTOC_VERSION="3.19.0"
curl -o /tmp/protoc.zip -L https://github.com/protocolbuffers/protobuf/releases/download/v${PROTOC_VERSION}/protoc-${PROTOC_VERSION}-linux-x86_64.zip
RUN unzip /tmp/protoc.zip -d /home/${USERNAME}/.local/
RUN rm /tmp/protoc.zip

# Install Flutter
git clone https://github.com/flutter/flutter.git -b stable ~/.flutter

~/.flutter/bin/flutter precache --web

# Get Relevant Dart CLIs needed for development
dart pub global activate protoc_plugin && dart pub global activate mono_repo


echo "on-create complete" >> ~/status
