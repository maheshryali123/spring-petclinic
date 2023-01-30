FROM alvistack/openjdk-17
RUN mkdir mahesh/
WORKDIR mahesh/
COPY /home/ubuntu/remote_repo/workspace/spring_project/target mahesh/
CMD [ "java", "-jar", "spring-petclinic-3.0.0-SNAPSHOT.jar"]