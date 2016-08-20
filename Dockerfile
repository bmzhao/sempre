FROM java:latest

RUN apt-get update && \
    apt-get install -y ruby wget make automake gawk gperf libtool bison flex libssl-dev net-tools git

RUN git clone https://github.com/openlink/virtuoso-opensource.git /virtuoso-opensource

RUN mkdir -p /root/app
COPY . /root/app
WORKDIR /root/app
RUN chmod +x compile-virtuoso.sh
RUN mv /virtuoso-opensource /root/app
RUN ./compile-virtuoso.sh

CMD ["/bin/bash"]