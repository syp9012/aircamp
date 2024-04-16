FROM amazoncorretto:17
CMD ["./mvnw", "clean", "package"]
ARG WAR_FILE=target/*.war
COPY ./build/libs/*.war app.war
ENTRYPOINT ["java", "-jar", "app.war"]