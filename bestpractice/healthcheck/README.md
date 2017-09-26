docker inspect --format "{{json .State.Health }}" c4639a7e6bc2
docker inspect --format "{{json .State.Health.Status }}" c4639a7e6bc2

kill ping inside the container, and restart it with "ping localhost &" to check that the container is unhealthy or not:

$ docker ps
CONTAINER ID        IMAGE                       COMMAND                  CREATED             STATUS                     PORTS               NAMES
38fb924b1456        pinglocalhost-healthcheck   "/entry.sh"              7 minutes ago       Up 7 minutes (unhealthy)                       modest_bohr

$ docker events --filter event=health_status
2017-09-26T12:26:22.829005401+02:00 container health_status: healthy 38fb924b14565222663d177e4c290874abc62cfacbddcb7b53f3175efa8aba37 (image=pinglocalhost-healthcheck, name=modest_bohr)
2017-09-26T12:26:47.261246978+02:00 container health_status: unhealthy 38fb924b14565222663d177e4c290874abc62cfacbddcb7b53f3175efa8aba37 (image=pinglocalhost-healthcheck, name=modest_bohr)

Kill the container when the number of FailingStreak pass a certain limit?
