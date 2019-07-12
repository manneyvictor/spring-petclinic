From openjdk:8
copy ./target/*.jar petclinic.jar
CMD ["java","-Dspring.profiles.active=mysql", "-jar", "petclinic.jar"]
