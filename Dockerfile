FROM alvistack/openjdk-17
ADD ~/remote_repo/workspace/spring_project/target/spring-petclinic-3.0.0-SNAPSHOT.jar .
CMD [ "java", "-jar", "spring-petclinic-3.0.0-SNAPSHOT.jar"]