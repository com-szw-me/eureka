FROM java:8

ADD target/*.jar /app.jar

VOLUME /tmp
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar", "> /log/app.log"]