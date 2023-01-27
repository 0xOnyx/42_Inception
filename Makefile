DOCKERFILE = ./srcs/docker-compose.yml

all: up

up:
	sudo mkdir -p /home/jerdos-s/data/mariadb/
	sudo mkdir -p /home/jerdos-s/data/wordpress/
	sudo echo "127.0.0.1 jerdos-s.42.fr" >> /etc/hosts
	sudo docker compose -f $(DOCKERFILE) up

down:
	sudo docker compose -f $(DOCKERFILE) down

re:
	sudo docker compose -f $(DOCKERFILE) up --build

clean: down
	sudo docker system prune -f


.PHONY: all up down re clean