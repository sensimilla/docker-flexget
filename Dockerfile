FROM pandada8/alpine-python:3

RUN apk --no-cache add ca-certificates \
  && pip install -I flexget transmissionrpc \
  && mkdir -p /root/.flexget \
  && touch /root/.flexget/config.yml 
  
COPY bootstrap.sh bootstrap.sh

RUN chmod +x bootstrap.sh

CMD ["bootstrap.sh"]
