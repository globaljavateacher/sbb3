FROM eclipse-temurin:21-jdk-alpine

WORKDIR /sbb3

# jar만 복사
COPY build/libs/app.jar app.jar

CMD ["java", "-Xmx256m", "-jar", sbb3-0.0.1-SNAPSHOT.jar"]
