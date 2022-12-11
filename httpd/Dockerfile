FROM centos:7

RUN yum -y install httpd php && \
    yum clean all

ADD index.html /var/www/html
ADD httpd.conf /etc/httpd/conf

ENTRYPOINT [ "/usr/sbin/httpd", "-D", "FOREGROUND" ]
