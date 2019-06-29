FROM maven:3-jdk-11 as builder
RUN mkdir -p /build
WORKDIR /build
COPY pom.xml ./
COPY src ./src
RUN mvn package

FROM openjdk:8-jdk-alpine
EXPOSE 8080
COPY --from=builder /build/target/*.jar app.jar
ENTRYPOINT exec java -jar app.jar