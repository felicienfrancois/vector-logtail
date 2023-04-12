FROM timberio/vector:0.25.1-alpine
ENV LOGTAIL_SERVER_URL=https://in.logtail.com/
COPY vector.toml /etc/vector/vector.toml
ENTRYPOINT sed -i "s~\${LOGTAIL_SOURCE_TOKEN}~$LOGTAIL_SOURCE_TOKEN~g" /etc/vector/vector.toml \
  && sed -i "s~\${LOGTAIL_SERVER_URL}~$LOGTAIL_SERVER_URL~g" /etc/vector/vector.toml \
  && /usr/local/bin/vector