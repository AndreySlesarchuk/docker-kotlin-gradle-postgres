FROM amazoncorretto:17-alpine-jdk

# create a directory for the app
WORKDIR /app

#Copy everything from the current directory to the app directory
COPY . .

# Build the app
RUN ./gradlew clean build -x test

# Expose port 8181
EXPOSE 8181

# Run the app
CMD ["java", "-jar", "./build/libs/demo-0.0.1-SNAPSHOT.jar"]