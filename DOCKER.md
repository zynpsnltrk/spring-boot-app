DOCKER
===================

## Build Docker Image

You can build spring-boot-app docker image with following command:

```
docker build -t spring-boot-app:0.1 .
```

## Run Docker Image

You can run Docker image with following command:

```
docker run --rm -p 8080:8080 -t spring-boot-app:0.1
```

