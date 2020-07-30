IMAGE_NAME="ubuntu-1604"
COMMAND="/bin/bash"

MNT_FROM="/Users/${USER}/rapidnet_v1.0/"
MNT_TO="/home/${USER}/docker/"

#-i interactive
#-t stdin/stdout
#-P port remapping
#-v <from>:<to> | volume mounting

# docker run -i -t -P -v ${MNT_FROM}:${MNT_TO} ${IMAGE_NAME} ${COMMAND}
docker run -i -t \
    --name zihao\
    -v ${MNT_FROM}:${MNT_TO} \
    ${IMAGE_NAME} \
    ${COMMAND}
