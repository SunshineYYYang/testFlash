
FROM openjdk:8-jdk-alpine
MAINTAINER "yjg shuai@qq.com"
LABEL description="描述"
WORKDIR app
ADD eurekaserver-0.0.1-SNAPSHOT.jar /app/app.jar
ADD application.yml /app/application.yml
EXPOSE 8080
CMD java -jar /app/app.jar
