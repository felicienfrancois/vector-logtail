FROM timberio/vector:0.25.1-alpine
ENTRYPOINT wget -O ->> /etc/vector/vector.toml \
    https://logtail.com/vector-toml/docker/$LOGTAIL_SOURCE_TOKEN \
    && /usr/local/bin/vector