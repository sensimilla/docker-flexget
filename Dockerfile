FROM python:2.7-slim

RUN pip install -I flexget transmissionrpc

RUN mkdir -p /root/.flexget && touch /root/.flexget/config.yml
RUN sed -i "/API_KEY =/c\import os; API_KEY = os.getenv('ROTTEN_TOMATOES_API_KEY', 'rh8chjzp8vu6gnpwj88736uv')" /usr/local/lib/python2.7/site-packages/flexget/plugins/api_rottentomatoes.py 

CMD ["/usr/local/bin/flexget", "--loglevel", "info", "daemon", "start"]
