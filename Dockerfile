FROM frolvlad/alpine-python3

RUN apk --no-cache add ca-certificates \
  && pip install -I flexget transmissionrpc \
  && mkdir -p /root/.flexget \
  && touch /root/.flexget/config.yml 
  
COPY bootstrap.sh /root/bootstrap.sh

RUN chmod +x /root/bootstrap.sh

CMD ["/root/bootstrap.sh"]
