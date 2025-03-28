#!/bin/bash
#Autor: Larissa Thalia
#Data: 27/03/2025

# Observação: Use "sudo" apenas se não estiver executando como root.

# Atualizar o servidor

echo "Sincronizando a lista de pacotes disponíveis no sistema..."

apt update

echo "Atualizando os pacotes instalados para suas versões mais recentes..."

apt upgrade -y

# Instalar o apache2

echo "Instalando o apache2..."

apt install apache2 -y

# Instalar o unzip

echo "Instalando o unzip..."

apt install unzip -y

echo "Baixando a aplicação no diretório /tmp..."

wget -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Extraindo os arquivos da aplicação..."

unzip /tmp/main.zip -d /tmp/

echo "Copiando os arquivos da aplicação para o diretorio padrão do Apache..."

cp -R /tmp/linux-site-dio-main/* /var/www/html/

echo "Configuração concluída com sucesso!"
