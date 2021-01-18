FROM centos:7

RUN yum install -y epel-release && \
    yum install -y java which nc nmap-ncat wget vim s3cmd && \
    wget https://github.com/ly798/dockerfiles/releases/download/cosbench-v0.4.2/cosbench-v0.4.2.tar.gz && \
    tar -xvf cosbench-v0.4.2.tar.gz -C / && \
    rm -rf cosbench-v0.4.2.tar.gz

COPY start.sh /output/start.sh
EXPOSE 18088 19088

WORKDIR /output
CMD sh ./start.sh $ip $t $n $u
