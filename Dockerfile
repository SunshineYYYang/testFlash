FROM tomcat:tomcat
MAINTAINER jenkenyang "jenkenyang@gmail.com"
#设置Java环境变量
RUN rm -rf /usr/local/tomcat/webapps/*
ENV JAVA_OPTS -server -Duser.timezone="Asia/Shanghai"
#ADD docker.war test.war
ADD ./docker.war /
EXPOSE 8080
ENTRYPOINT ["/usr/local/tomcat/bin/catalina.sh","run"]