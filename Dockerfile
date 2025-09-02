FROM openjdk:17-jdk-slim
WORKDIR /app
COPY . /app
RUN ./mvnw package
CMD ["java", "-cp", "target/grade-app-1.0.jar", "com.example.GradeApp"]
EXPOSE 8080
