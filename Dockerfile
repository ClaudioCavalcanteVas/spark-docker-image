FROM anapsix/alpine-java:8u201b09_server-jre_nashorn

RUN apk add tar

RUN mkdir /downloads

WORKDIR /downloads

RUN wget https://www-eu.apache.org/dist/spark/spark-2.4.0/spark-2.4.0-bin-hadoop2.7.tgz && \
    tar -xvf spark-2.4.0-bin-hadoop2.7.tgz && \
    rm spark-2.4.0-bin-hadoop2.7.tgz && \
    mv spark-* /spark

# Download Spark from internet with wget command
WORKDIR /spark

ENV PATH=$PATH:/spark/bin/

ENV TEST="testenvy"

CMD "/bin/bash"
