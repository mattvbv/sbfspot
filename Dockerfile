FROM nakla/sbfspot:latest

COPY ./start.sh /

ENTRYPOINT ["/start.sh"]