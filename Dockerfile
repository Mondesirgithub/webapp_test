FROM ubuntu
LABEL ridelntsoumou="ridelntsoumou@gmail.com"
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
EXPOSE 80
# ADD . /var/www/html/
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]