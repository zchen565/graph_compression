IMAGE_NAME="ubuntu2004-dedos-ndlog"
COMMAND="/bin/bash"

MNT_FROM="/home/${USER}/docker/"
MNT_TO="/home/${USER}/docker/"

#-i interactive
#-t stdin/stdout
#-P port remapping
#-v <from>:<to> | volume mounting

# docker run -i -t -P -v ${MNT_FROM}:${MNT_TO} ${IMAGE_NAME} ${COMMAND}
docker run -i -t \
    --name dedos-ndlog\
    -v ${MNT_FROM}:${MNT_TO} \
    ${IMAGE_NAME} \
    ${COMMAND}
