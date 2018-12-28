FROM golang:1.10

RUN git clone https://github.com/fatedier/frp /go/src/github.com/fatedier/frp \
 &&cd /go/src/github.com/fatedier/frp \
 && make \
 && mv bin/frpc /frpc \
 && mv bin/frps /frps \
 && mv conf/frpc.ini /frpc.ini \
 && mv conf/frps.ini /frps.ini \
 && make clean

WORKDIR /

EXPOSE 80 443 6000 7000 7500
