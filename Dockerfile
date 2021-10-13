FROM nakla/sbfspot:latest

ARG user=sbfspot
ARG group=sbfspot
ARG uid=5000
ARG gid=5000
ARG confdir=/etc/sbfspot
ARG datadir=/var/sbfspot
ARG sbfspot_home=/usr/local/bin/sbfspot.3

COPY ./start.sh /

RUN chmod u+x /start.sh \
      && chown $user:$group /start.sh

ENTRYPOINT ["/start.sh"]