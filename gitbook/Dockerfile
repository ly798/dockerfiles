FROM mhart/alpine-node:12

RUN npm install -g gitbook-cli
WORKDIR /
CMD gitbook install /mynote; gitbook serve /mynote  /tmp/_book
