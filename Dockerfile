FROM ubuntu:22.04

RUN apt-get clean && \
    apt-get update && \
    apt-get install -y wget && \
    rm -rf /var/lib/apt/lists/*

COPY docker-entrypoint.sh /bin/docker-entrypoint.sh

RUN chmod +x /bin/docker-entrypoint.sh

ENTRYPOINT ["/bin/docker-entrypoint.sh"] 
