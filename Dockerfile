FROM frolvlad/alpine-glibc
MAINTAINER duqian

WORKDIR /opt/

ADD transpond.jar /opt/
ADD config.properties /opt/
ADD run.sh /opt/
ADD replace.sh /opt/

RUN touch /log.log; \
    wget -O /opt/jdk1.8.tar.gz https://www.dropbox.com/s/qgondyspmi6x6qq/server-jre-8u221-linux-x64.tar.gz?dl=1 \
    tar -zxvf jdk1.8.tar.gz; \
    chmod +x /opt/run.sh; \
    chmod +x /opt/replace.sh;

ENV JAVA_HOME=/opt/jdk1.8.0_221
ENV CLASSPATH=$JAVA_HOME/bin
ENV PATH=.:$JAVA_HOME/bin:$PATH

EXPOSE 80

CMD ["/opt/run.sh"]


