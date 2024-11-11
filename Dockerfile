
# Usamos una imagen base de OpenJDK 1.8
FROM openjdk:8-jdk-alpine

# Definimos el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiamos el archivo pom.xml y los archivos fuente al contenedor
COPY pom.xml /app
COPY src /app/src

# Ejecutamos Maven para compilar el proyecto
RUN apk add --no-cache maven && mvn clean package

# El comando para ejecutar la aplicación, usando el JAR generado
CMD ["java", "-cp", "target/ProyectoJava-1.0-SNAPSHOT.jar", "com.mycompany.proyectojava.ProyectoJava"]
