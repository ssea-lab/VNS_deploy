./savedata.sh
sudo docker container rm  -f nginx-proxy
sudo docker container rm  -f vns-f
sudo docker image rm  -f vns-frontend
sudo docker container rm  -f vns-b
sudo docker image rm  -f vns-backend
sudo docker-compose build
sudo docker compose up -d

