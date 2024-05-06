FROM nginx:1.26 as base_build

EXPOSE 80

RUN rm /etc/nginx/conf.d/default.conf


FROM base_build as local_http_build

COPY local_http_build/nginx.conf /etc/nginx/nginx.conf


FROM base_build as local_https_build

COPY local_https_build/nginx.conf /etc/nginx/nginx.conf
COPY local_https_build/localhost.crt /etc/nginx/localhost.crt
COPY local_https_build/localhost.key /etc/nginx/localhost.key


FROM base_build as prod_https_build

COPY prod_https_build/nginx.conf /etc/nginx/nginx.conf
