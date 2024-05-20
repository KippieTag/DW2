FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y nginx && \
    rm -rf /var/lib/apt/lists/*
COPY ./html/ /var/www/html
COPY buildtime.sh /var/www/html/buildtime.sh
RUN chmod +x /var/www/html/buildtime.sh
CMD ["/var/www/html/buildtime.sh"]
EXPOSE 80