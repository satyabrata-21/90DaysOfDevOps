# From base image
FROM eclipse-temurin:17-jdk

#Set working directory
WORKDIR /app

#Copy java file into container
COPY src/Main.java .

#Compile java code
RUN javac Main.java

#Start the application
CMD [ "java", "Main"]

