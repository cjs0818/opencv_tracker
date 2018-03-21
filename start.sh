#docker run --name opencv -it -v $(pwd):/host victorhcm/opencv /bin/bash

XSOCK=/tmp/.X11-unix

docker run --name opencv -it --rm \
  --env "DISPLAY" \
  --volume $XSOCK:$XSOCK:rw \
  -v $(pwd):/host \
   victorhcm/opencv \
   /bin/bash
