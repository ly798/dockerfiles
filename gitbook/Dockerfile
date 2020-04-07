FROM mhart/alpine-node:12

RUN npm install -g gitbook-cli
WORKDIR /mynote
CMD gitbook install; gitbook serve . /tmp/_book
