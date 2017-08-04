FROM xqdocker/ubuntu-nginx

COPY dist /data/www/admin
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
RUN service nginx start
