FROM adoptopenjdk/openjdk13:alpine
RUN apk update &&\ 
    apk upgrade &&\
    mkdir /JSTORAGEINSTALL &&\
    cd /JSTORAGEINSTALL &&\
    wget "https://ci.netbeacon.de/repository/download/JStorage_Build/latest.lastSuccessful/JStorage-all.jar?guest=1" -O "JStorage.jar" &&\
    chmod +x JStorage.jar
ENTRYPOINT cd /JSTORAGEINSTALL && java -jar JStorage.jar $ARGS