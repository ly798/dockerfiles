FROM alpine:latest

# v0.35.1
RUN wget https://github.com/fatedier/frp/releases/download/v0.35.1/frp_0.35.1_linux_amd64.tar.gz && \
    tar -xvf frp_0.35.1_linux_amd64.tar.gz && \
    mv frp_0.35.1_linux_amd64 /

WORKDIR /frp_0.35.1_linux_amd64

EXPOSE 80 443 6000 7000 7500
