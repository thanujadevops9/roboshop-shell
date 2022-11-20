echo '[mysql57-community]
name=MySQL 5.7 Community Server
baseurl=http://repo.mysql.com/yum/mysql-5.7-community/el/7/$basearch/
enabled=1
gpgcheck=0' > /etc/yum.repos.d/mysql.repo

yum remove mariadb-libs -y
yum install mysql-community-server -y

systemctl enable mysqld
systemctl restart mysqld
