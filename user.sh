yum install nodejs make gcc-c++ -y

useradd roboshop

curl -s -L -o /tmp/user.zip "https://github.com/roboshop-devops-project/user/archive/main.zip"cd /home/roboshop
rm -rf user
unzip -o /tmp/user.zip
mv user-main user
cd /home/roboshop/user
npm install

sed -i -e 's/REDIS_ENDPOINT/redis.thanujadevops9.online/' -e 's/MONGO_ENDPOINT/mongo.thanujadevops9.online/'
mv /home/roboshop/user/systemd.service /etc/systemd/system/user.service
systemctl daemon-reload
systemctl restart user
systemctl enable user