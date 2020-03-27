FROM openjdk:8-jdk-slim

COPY /pdf-generator.jar  /opt/
RUN apt-get update &&  apt-get install -y procps \
  && apt-get install -y libreoffice-draw libreoffice-writer libreoffice-calc libreoffice-impress \
  && rm -rf /var/lib/apt/lists/*

EXPOSE 8080

CMD [ "java", "-jar", "/opt/pdf-generator.jar" ]