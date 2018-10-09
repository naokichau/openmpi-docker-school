openmpi-docker-school
# How to run 
```
    $docker run -d --name openmpi --mount type=bind,src=$PWD/study,dst=/study naokichau/openmpi-alpine 
```
FOR Windows 😑 (add permission if needed)
```
    $docker run -d --name openmpi -v "/c/Users/[YOUR USER]/study:/study" naokichau/openmpi-alpine
```
```
    $docker exec -it openmpi sh
```