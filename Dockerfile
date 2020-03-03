From openjdk:8                                                                                                                                              WORKDIR /home/petclinic/
COPY ./target/spring-boot-petclinic-mysql.jar /home/petclinic/petclinic.jar
CMD ["java","-Dspring.profiles.active=mysql", "-jar", "/home/petclinic/petclinic.jar"]
