From openjdk:8
#Após realizar o build com o maven, executar passo abaixo.
copy ./target/*.jar petclinic.jar
CMD ["java","-Dspring.profiles.active=mysql", "-jar", "petclinic.jar"]
