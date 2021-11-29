FROM nginx:latest

COPY default.conf /etc/nginx/conf.d/

RUN chgrp -R 0 /var/cache/nginx /etc/nginx /var/run && \
    chmod -R g=u /var/cache/nginx /etc/nginx /var/run
