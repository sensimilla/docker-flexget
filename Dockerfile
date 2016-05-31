FROM frolvlad/alpine-python2

RUN apk --no-cache add ca-certificates \
  && pip install -I flexget transmissionrpc \
  && mkdir -p /root/.flexget \
  && touch /root/.flexget/config.yml \
  && sed -i "/API_KEY =/c\import os; API_KEY = os.getenv('ROTTEN_TOMATOES_API_KEY', 'rh8chjzp8vu6gnpwj88736uv')" /usr/lib/python2.7/site-packages/flexget/plugins/api_rottentomatoes.py 

CMD ["/usr/bin/flexget", "--loglevel", "info", "daemon", "start"]
