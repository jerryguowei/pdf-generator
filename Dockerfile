FROM openjdk:8-jdk-slim

RUN apt-get update &&  apt-get install -y procps \
    libreoffice-draw libreoffice-writer libreoffice-calc libreoffice-impress \
    locales-all fonts-wqy-zenhei fonts-wqy-microhei fonts-droid-fallback fonts-noto-cjk 
 

RUN rm -rf /var/lib/apt/lists/*

COPY /pdf-generator.jar  /opt/

EXPOSE 8080

CMD [ "java", "-jar", "/opt/pdf-generator.jar" ]
