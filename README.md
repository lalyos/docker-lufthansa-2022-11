


## build the image - v3

```
docker build -t lunch:v3 .

# or 
sudo docker build \
  --build-arg http_proxy=http://prx-fralh-v01.sec.fra.dlh.de:8080 \
  -t lunch:v3 \
  .
```

start the containerf
```
docker run -d  lunch:v3
```

check the webserver
```
docker exec $(docker ps -lq) curl -s localhost
```

## Ports

start with exposing the port
```
docker run -d -p 8080:80  lunch:v3
```

## Exposing
Add a new line to Dockerfile
```
EXPOSE 80
```

```
docker build -t lunch:v4 .
```

use the new image:
```
docker run -dP  lunch:v4
```

## CoffeBreak

```
docker run -dP -e TITLE="coffebreak for lalyos" lunch:v4
```
