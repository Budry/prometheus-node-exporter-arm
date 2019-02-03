FROM arm32v6/alpine

ARG TAG

RUN wget https://github.com/prometheus/node_exporter/releases/download/v${TAG}/node_exporter-${TAG}.linux-armv6.tar.gz && \
    tar -xvzf node_exporter-${TAG}.linux-armv6.tar.gz && \
    cp ./node_exporter-${TAG}.linux-armv6/node_exporter /bin/node_exporter

EXPOSE 9100
USER nobody
ENTRYPOINT  [ "/bin/node_exporter" ]