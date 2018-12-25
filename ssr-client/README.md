使用docker运行ssr客户端

docker run -v /etc/shadowsocks/config.json:/ssrconfig.json -p 1080:1080 ly798/ssr-client

映射配置文件到`/ssrconfig.json`
