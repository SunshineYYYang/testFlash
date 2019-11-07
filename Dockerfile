
FROM openjdk:8-jdk-alpine
MAINTAINER "yjg shuai@qq.com"
LABEL description="描述"
WORKDIR app/gcs
ADD gcs-0.0.1-SNAPSHOT.jar /app/gcs/app.jar
ADD application.yml /app/gcs/application.yml
EXPOSE 8895
CMD java -jar /app/gcs/app.jar
