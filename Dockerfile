FROM timberio/vector:0.25.1-alpine
COPY vector.toml /etc/vector/vector.toml
ENTRYPOINT envsubst '$LOGTAIL_SOURCE_TOKEN' < /etc/vector/vector.toml > /etc/vector/vector.toml \
  && /usr/local/bin/vector