DOCKERFILE = ./srcs/docker-compose.yml

all: up

up:
	make -p /home/jerdos-s/data/mariadb/
	make -p /home/jerdos-s/data/wordpress/
	echo "127.0.0.1 jerdos-s.42.fr" >> /etc/hosts
	docker compose -f $(DOCKERFILE) up

down:
	docker compose -f $(DOCKERFILE) down

re:
	docker compose -f $(DOCKERFILE) up --build

clean: down
	docker system prune -f


.PHONY: all up down re clean