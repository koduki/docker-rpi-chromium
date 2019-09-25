FROM debian:buster

RUN apt-get update && \
    apt-get install -y xinit matchbox-window-manager xterm chromium && \
    apt-get -y --purge autoremove && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY run.sh /app/run.sh
CMD ["./run.sh"]