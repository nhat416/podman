FROM ubi9/ubi
MAINTAINER Nhat Tran
LABEL description="Red Hat based Apache webserver built on top of ubi9"

RUN yum update && \
yum install -y httpd && \
yum clean all && \
echo "Hello World! From Apache webserver ^_^" > /var/www/html/index.html

# port
EXPOSE 80

# start service
ENTRYPOINT ["httpd"]

# arguments
CMD ["-D", "FOREGROUND"]
