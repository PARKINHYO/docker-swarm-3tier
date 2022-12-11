FROM centos:7

RUN yum install -y mariadb-server && \
    yum clean all

RUN groupadd mariadb && useradd -g mariadb mariadb

ADD fix-permissions.sh ./
RUN chmod +x fix-permissions.sh
RUN ./fix-permissions.sh /var/lib/mysql/   && \
    ./fix-permissions.sh /var/log/mariadb/ && \
    ./fix-permissions.sh /var/run/

ADD entrypoint.sh /
RUN chmod +x entrypoint.sh

USER mariadb

ENTRYPOINT [ "/entrypoint.sh" ]
CMD [ "mysqld_safe" ]
