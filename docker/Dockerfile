FROM nginx:alpine
COPY auth.sh /tmp
RUN apk add --no-cache --update \
    apache2-utils \
    && rm /etc/nginx/conf.d/default.conf \
    && rm -rf /usr/share/nginx/html \
    && chmod +x /tmp/auth.sh
COPY ./site /usr/share/nginx/html
COPY ./nginx  /etc/nginx/conf.d
ENV USER="admin" \
    PASSWORD="admin"
CMD ["tmp/auth.sh"]


