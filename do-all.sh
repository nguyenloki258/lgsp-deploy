zip -r -9 ./setup.zip ./setup/
SOURCE_DIR=./setup.zip
# COMMAND='rm /srv/loki -rf | cd /srv | unzip /srv/beka-lgsp-deploy.zip | echo "Admin@00vsp" | sudo -S bash /srv/beka-lgsp-deploy/setup/infrastructure/docker/install.sh'
# COMMAND='echo "Admin@00vsp" | sudo -S bash /srv/beka-lgsp-deploy/setup/infrastructure/docker/install.sh'
COMMAND='rm setup/ -rf  | unzip -o -d /srv  /srv/setup.zip'
# COMMAND='unzip -o -d /srv /srv/setup.zip | echo "Admin@00vsp" | sudo -S bash /srv/setup/infrastructure/docker/install.sh'
SERVERS="
    nginxproxy|192.168.10.10
    ubuntu2204lts|192.168.11.10
    ubuntu2204lts|192.168.11.11
    ubuntu2204lts|192.168.11.12 
    ubuntu2204lts|192.168.12.10
    ubuntu2204lts|192.168.12.11
    ubuntu2204lts|192.168.12.12 
"

for item in ${SERVERS[@]}; do
    echo "item=$item"  
    arrIN=(${item//|/ })
    SERVER_NAME=${arrIN[0]}   
    SERVER_IP=${arrIN[1]}  
    echo "SERVER_NAME=$SERVER_NAME"  
    echo "SERVER_IP=$SERVER_IP" 
    scp -r $SOURCE_DIR $SERVER_NAME@$SERVER_IP:/srv
    ssh $SERVER_NAME@$SERVER_IP $COMMAND
done 
 