FROM centos:7

RUN yum install -y wget unzip java-1.8.0-openjdk && \
    wget --no-check-certificate https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.27/bin/apache-tomcat-10.0.27.zip && \
    unzip apache-tomcat-10.0.27.zip && \
    mv apache-tomcat-10.0.27 tomcat && \
    rm -rf *.zip && chmod -R +x /tomcat && \
    wget --no-check-certificate https://repo1.maven.org/maven2/mysql/mysql-connector-java/8.0.30/mysql-connector-java-8.0.30.jar && \
    mv mysql-connector-java-8.0.30.jar /tomcat/lib && \
    yum clean all

COPY test.jsp /tomcat/webapps/ROOT
COPY dbtest.jsp /tomcat/webapps/ROOT

ENTRYPOINT ["/tomcat/bin/catalina.sh", "run"]
