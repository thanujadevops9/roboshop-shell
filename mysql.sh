curl -s -l -o /etc/yum.repos.d/mysql.repo https://raw.githubusercontent.com/roboshop-devops-project/mysql/main/mysql.repo
dnf module disable mysql

yum remove mariadb-libs -y
yum install mysql-community-server -y

systemctl enable mysqld
systemctl restart mysqld
