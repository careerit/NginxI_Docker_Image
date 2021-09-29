FROM ubuntu:18.04
RUN apt-get update && apt-get install nginx -y && \
    rm /var/www/html/*.html
COPY htmlFiles /var/www/html/
COPY server.config /temp/
EXPOSE 80 
CMD ["nginx", "-g", "daemon off;"]