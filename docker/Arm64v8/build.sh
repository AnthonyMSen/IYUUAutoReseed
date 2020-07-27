#!/bin/sh
docker build -f Dockerfile -t iyuu:latest .
docker run -it -v /root/config.php:/config.php --network bridge --name IYUUAutoReseed --restart always -d iyuu:latest
docker exec -it IYUUAutoReseed php iyuu.php