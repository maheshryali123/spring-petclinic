FROM alvistack/openjdk-17
RUN mkdir mahesh/
WORKDIR mahesh/
COPY /target/spring-petclinic-3.0.0-SNAPSHOT.jar mahesh/
CMD [ "java", "-jar", "spring-petclinic-3.0.0-SNAPSHOT.jar"]