openmpi-docker-school
# How to run 
```
    $docker run -d --name openmpi --mount type=bind,src=$PWD/study,dst=/study naokichau/openmpi-alpine 
```
```
    $docker exec -it openmpi sh
```