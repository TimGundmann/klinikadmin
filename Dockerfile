FROM xqdocker/ubuntu-nginx

COPY dist /data/www/admin
EXPOSE 80
RUN service nginx start
