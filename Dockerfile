FROM frolvlad/alpine-python2

RUN apk --no-cache add ca-certificates \
  && pip install -I flexget transmissionrpc \
  && mkdir -p /root/.flexget \
  && touch /root/.flexget/config.yml 

CMD ["/usr/bin/flexget", "--loglevel", "debug", "daemon", "start"]
