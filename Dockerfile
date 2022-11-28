FROM timberio/vector:0.25.1-alpine
COPY vector.toml /etc/vector/vector.toml
ENTRYPOINT sed -i "s/\${LOGTAIL_SOURCE_TOKEN}/$LOGTAIL_SOURCE_TOKEN/g" < /etc/vector/vector.toml > /etc/vector/vector.toml \
  && /usr/local/bin/vector