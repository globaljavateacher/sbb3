FROM eclipse-temurin:21-jdk-alpine

WORKDIR /sbb3

COPY . .

RUN chmod +x gradlew
RUN ./gradlew build

CMD ["java", "-Xmx256m", "-jar", "build/libs/sbb3.jar"]
