FROM maven:3.9.4-eclipse-temurin-21
WORKDIR /app
COPY . /app
COPY mvnw .
COPY mvnw.cmd .
COPY .mvn .mvn
RUN mkdir -p /root/.m2
RUN mvn clean package -Dmaven.repo.local=/root/.m2
CMD ["java", "-cp", "target/grade-app-1.0.jar", "com.example.GradeApp"]
EXPOSE 8080
