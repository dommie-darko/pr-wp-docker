# Power und Radach Wordpress Docker


## usefull commands

- list containers

				$ docker ps [-a]

- list images

				$ docker images

- stop container

				$ docker stop {container}

- kill / remove container

				$ docker rm {container}

- kill / remove images

				$ docker rmi {image}

- run container

				$ docker-compose up [-d] [--build]

- execute within a container (wordpress)

				$ docker-compose exec wp bash
				$ docker-compose exec wp wp media regenerate

- execute within a database container

				$ docker-compose exec db mysql -uwordpress -pwordpress

- backup database

				$ docker-compose exec db mysqldump -u -p wordpress > /tmp/wordpress.sql

- restore database

				$ docker-compose exec db mysql -u -p wordpress < /tmp/wordpress.sql
