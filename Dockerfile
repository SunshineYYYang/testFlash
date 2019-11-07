FROM tomcat:9.0.0.M25
MAINTAINER yasaka "mail_yanpeng@163.com"
#设置Java环境变量
RUN rm -rf /usr/local/tomcat/webapps/*
ENV JAVA_OPTS -server -Duser.timezone="Asia/Shanghai"
ADD ./target/xx.war /usr/local/tomcat/webapps/
EXPOSE 8080
ENTRYPOINT ["/usr/local/tomcat/bin/catalina.sh","run"]