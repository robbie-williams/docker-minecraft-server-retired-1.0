docker stop gt
docker rm gt
docker build .
docker run -e EULA=TRUE -e TYPE=PAPERGEYSER -d -p 25565:25565 -p 25575:25575 -p 19132:19132/udp --name gt $(docker images --format='{{.ID}}' | head -1)
docker image prune -y
