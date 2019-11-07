FROM tomcat:9.0.0.M25
MAINTAINER yasaka "mail_yanpeng@163.com"
#设置Java环境变量
ENV JAVA_OPTS -server -Duser.timezone="Asia/Shanghai"
COPY docker.war ${CATALINA_HOME}/docker.war
EXPOSE 8080