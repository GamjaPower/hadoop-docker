docker-compose down
docker rm -f $(docker ps -a -q)
docker image rm daemon
docker image rm base
docker-compose build
docker-compose run namenode format.sh
docker-compose up -d
