FROM tomcat:9.0-jdk11-openjdk-slim

# Set environment variables (Optional)
ENV CATALINA_HOME /usr/local/tomcat

# Copy the WAR file into the Tomcat webapps directory
COPY /target/TrainBook-1.0.0-SNAPSHOT.war /usr/local/tomcat/webapps/

# Expose the Tomcat port
EXPOSE 8080

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]
