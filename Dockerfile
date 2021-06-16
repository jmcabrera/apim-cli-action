FROM openjdk:8

ADD "https://github.com/Axway-API-Management-Plus/apim-cli/releases/download/apimcli-1.3.7/axway-apimcli-1.3.7.tar.gz" "apim.tgz"

COPY "entrypoint.sh" "entrypoint.sh"

RUN tar zxf apim.tgz && rm apim.tgz && echo $PWD && mv apim* /apim

ENTRYPOINT [ "/entrypoint.sh" ]