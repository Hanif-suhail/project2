FROM adoptopenjdk/openjdk11
  
EXPOSE 8080
 
ENV APP_HOME /usr/src/app
ENV SERVER_PORT=9090

COPY target/*.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

CMD ["java", "-jar", "app.jar",  "--server.port=9090"]
