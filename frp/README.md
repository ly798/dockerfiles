server:
```
docker run -d --name frp-server --net=host -v /tmp/frps.ini:/frps.ini ly798/frp:latest /frps -c /frps.ini
```

client:
```
docker run -d --name frp-client --net=host -v /tmp/frpc.ini:/frpc.ini ly798/frp:latest /frpc -c /frpc.ini
```
