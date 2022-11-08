


## build the image - v3

```
docker build -t lunch:v3 .

# or 
sudo docker build \
  --build-arg http_proxy=http://prx-fralh-v01.sec.fra.dlh.de:8080 \
  -t lunch:v3 \
  .
```