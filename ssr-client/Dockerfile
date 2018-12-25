FROM python:2.7-alpine

COPY ./ssrconfig.json /ssrconfig.json
COPY ./shadowsocksr /shadowsocksr

RUN apk update && \
    apk add libsodium-dev

EXPOSE 1080

WORKDIR /shadowsocksr
CMD python shadowsocks/local.py -c /ssrconfig.json

