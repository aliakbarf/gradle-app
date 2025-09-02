FROM maven:3.9.4-eclipse-temurin-21
WORKDIR /app
COPY . /app
COPY mvnw .
COPY mvnw.cmd .
COPY .mvn .mvn
RUN ./mvnw package
CMD ["java", "-cp", "target/grade-app-1.0.jar", "com.example.GradeApp"]
EXPOSE 8080
