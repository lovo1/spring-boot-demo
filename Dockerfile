FROM openjdk:8-jre-slim
MAINTAINER gaojintao
LABEL name="spring-boot-demo" version="1.0" author="gaojt"
ENV PARAMS="-Xms104m -Xmx236m -XX:PermSize=128M -XX:MaxPermSize=256M"

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ADD spring-boot-demo-*.jar app.jar

ENTRYPOINT ["sh","-c","java -jar app.jar $PARAMS"]