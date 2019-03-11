FROM anapsix/alpine-java:8u201b09_server-jre_nashorn

RUN apk add tar

RUN mkdir /downloads \
    cd /downlaods \
    wget https://www-eu.apache.org/dist/spark/spark-2.4.0/spark-2.4.0-bin-hadoop2.7.tgz

# Download Spark from internet with wget command
RUN mkdir -p /spark

WORKDIR /spark

ENV PATH=$PATH:/spark/bin/

ADD ./spark-2.3.2-bin-hadoop-2.7 /spark

ENV TEST="testenvy"

CMD "/bin/bash"
