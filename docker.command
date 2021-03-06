
docker ps : list all docker's container

docker exec -t -i container_name /bin/bash : log in docker conatiner in bash mode
docker exec -it -u root container_id bash   : log in docker in in bash mode with root user

docker rm -f CONTAINER_ID
docker kill $(docker ps -q) : kill all running containers
docker rm $(docker ps -a -q): delete all stopped containers with
docker rmi $(docker images -q):delete all images with

Launch Jupyter
-------------
docker run -p 8888:8888 --hostname localhost jupyter/minimal-notebook

with tensorflow:
docker run -p 8888:8888 --hostname localhost jupyter/tensorflow-notebook 

get inetrnal ip from host machine:
                                  docker-machine ip
load on browser :
                http://192.168.99.100:8888/tree   with 192.168.99.100 as ip 


Install Package in container
---------------------------
docker exec <containerId> pip install tensorflow


Exit the container and commit the changes
-----------------------------------------
docker commit CONTAINER_ID NAME_IMAGE

Disk Size
--------
docker ps -s
docker ps --size
docker system df


For Hyper-V
-----------
 docker-machine create --driver hyperv vm

  Create Virtual switch manager
  ----------------------------
  https://docs.docker.com/machine/drivers/hyper-v/#example
  
 
  
