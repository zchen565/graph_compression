IMAGE_NAME="zhanj7_v1.0:rapidnet_14.04"
COMMAND="/bin/bash"

MNT_FROM="/Users/milliondegree/Documents/docker/"
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
