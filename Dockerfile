FROM alvistack/openjdk-17
RUN mkdir mahesh/
WORKDIR mahesh/
ADD ~/remote_repo/workspace/spring_project/target/spring-petclinic-3.0.0-SNAPSHOT.jar mahesh/
CMD [ "java", "-jar", "spring-petclinic-3.0.0-SNAPSHOT.jar"]