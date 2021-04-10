FROM nvidia/cuda:11.2.2-base-ubuntu18.04

LABEL Damel <dlambertpowell@gmail.com>

WORKDIR /root

RUN apt update
RUN apt -y install wget 
RUN wget https://github.com/trexminer/T-Rex/releases/download/0.20.0/t-rex-0.20.0-linux.tar.gz

RUN tar -xzf t-rex-0.20.0-linux.tar.gz

ENV USR_ADDR=0x72a5a4c56d5e91343fbb90089040312462a3568e
ENV POOL_SERV=stratum+tcp://eu1.ethermine.org:4444
ENV ALGO=ethash

CMD /root/t-rex \
        -a ${ALGO} \
        -o ${POOL_SERV} \
        -u ${USR_ADDR} \
        -w trex-miner
