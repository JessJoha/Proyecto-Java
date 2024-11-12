# Java Project - Hello World

This is a simple Java project that prints "Hello World" to the console.

## Technologies Needed

- JDK (Java Development Kit) 1.8 or higher
- Docker (to run the project in a containerized environment)
- IDE like NetBeans (optional, but recommended)

## Dockerfile Explanation

    
| **Step**                       | **Description**                                                                                             |
|---------------------------------|-------------------------------------------------------------------------------------------------------------|
| `FROM openjdk:8-jdk-alpine`     | Use the OpenJDK 8 image based on Alpine Linux, providing a lightweight environment for Java.                 |
| `WORKDIR /app`                  | Set the working directory inside the container to `/app`.                                                   |
| `COPY pom.xml /app`             | Copy the Maven `pom.xml` file to the `/app` directory inside the container.                                 |
| `COPY src /app/src`             | Copy the source code into the container's `/app/src` directory.                                             |
| `RUN apk add --no-cache maven && mvn clean package` | Install Maven and build the project with `mvn clean package`.                                     |
| `CMD ["java", "-cp", "target/ProyectoJava-1.0-SNAPSHOT.jar", "com.mycompany.proyectojava.ProyectoJava"]` | Run the Java application using the generated `.jar` file. |


## Building the Docker Image 
If you prefer to build the Docker image, run this command.

1. **Build the Docker image:**
   
```bash
docker build -t imgjava .
 ```

## Push the image to Docker Hub
To push the image to your own Docker Hub account, follow these steps.

1. **Tag the image:**

    ```bash
    docker tag imgjava jessjoha/imgjava:latest
    ``` 
2. **Push the image to Docker Hub:**
   
    ```bash
    docker push jessjoha/imgjava:latest
    ``` 

### Pull the image from Docker Hub:

```bash
docker pull jessjoha/imgjava
```

## Link to the Docker Hub image:

https://hub.docker.com/r/jessjoha/imgjava

The program will print `Hello World` to the console.

