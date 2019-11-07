FROM tomcat:9.0.0.M25
MAINTAINER yasaka "mail_yanpeng@163.com"
#设置Java环境变量
ENV JAVA_OPTS -server -Duser.timezone="Asia/Shanghai"
COPY ./docker.war ${CATALINA_HOME}/webapps/docker.war
#ADD docker.war test.war
#ADD ./docker.war /
EXPOSE 8080
ENTRYPOINT ["/usr/local/tomcat/bin/catalina.sh","run"]