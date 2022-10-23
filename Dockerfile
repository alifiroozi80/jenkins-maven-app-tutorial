FROM ibmjava:8-jre-alpine

# Add Tini
ENV TINI_VERSION v0.19.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini
ENTRYPOINT ["/tini", "--"]

# Open the 8080 port on the Container
EXPOSE 8080

# Copy the jar file
COPY ./target/java-maven-app-*.jar /usr/app/
WORKDIR /usr/app

# Run the App
CMD ["java", "-jar", "java-maven-app-*.jar"]