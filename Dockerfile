FROM nginx
ARG app_name
COPY $app_name /usr/share/nginx/html
RUN cat /usr/share/nginx/html/index.html
COPY $app_name/default.conf /etc/nginx/conf.d/default.conf
COPY $app_name/.htpasswd /etc/nginx/.htpasswd