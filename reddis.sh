yum install epel-release yum-utils -y
yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y
yum-config-manager --enable remi
yum install redis -y

sed -i -e 's/127.0.0.1/0.0.0/,'/etc/redis.conf /etc/redis/redis.conf

systemctl enable redis
systemctl restart redis