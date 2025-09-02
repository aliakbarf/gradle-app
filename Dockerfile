FROM openjdk:17-jdk-slim
WORKDIR /app
COPY . /app
COPY mvnw .
COPY mvnw.cmd .
COPY .mvn .mvn
RUN ./mvnw package
CMD ["java", "-cp", "target/grade-app-1.0.jar", "com.example.GradeApp"]
EXPOSE 8080
