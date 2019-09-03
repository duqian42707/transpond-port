
## HOW TO USE



```
docker run -d --name transport -p 8080:80 \
    -e HOST_IP="192.168.102.171" \
    -e HOST_PORT="22" \
    -e HOST_USER="root" \
    -e HOST_PASS="123.com" \
    -e TARGET_HOST="127.0.0.1" \
    -e TARGET_PORT="8080" \
    registry.cn-hangzhou.aliyuncs.com/duqian/transport
```
