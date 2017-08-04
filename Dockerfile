FROM xqdocker/ubuntu-nginx

COPY dist /data/www/admin
#COPY nginx.conf /etc/nginx/conf.d/defaul.conf
EXPOSE 80
RUN service nginx start
