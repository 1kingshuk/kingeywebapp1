FROM fedora
MAINTAINER kingshuk "kingshuk"
RUN yum install httpd -y
#  This is Apache httpd web server
WORKDIR /var/www/html/
ADD . . 
EXPOSE 80
ENTRYPOINT httpd -DFOREGROUND
#  'systemctl start httpd'  this command cannot be written here
