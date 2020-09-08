IMAGE_NAME="ubuntu-1404"
COMMAND="/bin/bash"

MNT_FROM="/home/${USER}/rapidnet_v1.0/"
MNT_TO="/root/docker"



#-i interactive
#-t stdin/stdout
#-P port remapping
#-v <from>:<to> | volume mounting

# docker run -i -t -P -v ${MNT_FROM}:${MNT_TO} ${IMAGE_NAME} ${COMMAND}
docker run -i -t \
    --name zchen565\
    -v ${MNT_FROM}:${MNT_TO} \
    ${IMAGE_NAME} \
    ${COMMAND}
