FROM centos:7

COPY output.tar.gz /output.tar.gz

RUN yum install -y java which nc nmap-ncat epel-release && \
    yum install -y s3cmd && \
    tar -xvf /output.tar.gz -C / && \
    rm -rf /output.tar.gz

COPY start.sh /output/start.sh
EXPOSE 18088 19088

WORKDIR /output
CMD sh ./start.sh $ip $t $n $u
