#!/bin/bash

# Atualiza o sistema
sudo apt update
sudo apt upgrade -y

# Instala o JDK 8
sudo apt install openjdk-8-jdk -y

# Adiciona o repositório do VSCode e instala
sudo apt install software-properties-common -y
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code -y

# Instala o Git
sudo apt install git -y

# Instala o Docker
sudo apt install docker.io -y

# Adiciona o usuário ao grupo do Docker para evitar a necessidade de sudo
sudo usermod -aG docker $USER

echo "Instalação concluída. Por favor, faça logout e login novamente para aplicar as alterações no grupo do Docker."
