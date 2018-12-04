
docker ps : list all docker's container
docker exec -t -i container_name /bin/bash : log in docker conatiner in bash mode
docker rm -f CONTAINER_ID


Launch Jupyter
-------------
docker run -p 8888:8888 --hostname localhost jupyter/minimal-notebook
