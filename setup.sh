#!/bin/bash
#Atualizando os pacotes
yum update -y
#Configurando os repositórios
amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
#Instalando o apache e o mysql
yum install -y httpd
#mariadb-server
#inicialização automática
systemctl start httpd
systemctl enable httpd
#systemctl start mariadb
#systemctl enable mariadb
#Ajustando o permissionamento
usermod -a -G apache ec2-user
chown -R ec2-user:apache /var/www
echo DB_SERVER='terraform-20210204134026332200000001.cjqyoez4xnvn.us-east-1.rds.amazonaws.com' >> /etc/environment
echo DB_USERNAME='admin' >> /etc/environment
echo DB_PASSWORD='rootdbaws' >> /etc/environment
echo DB_DATABASE='cadastro' >> /etc/environment