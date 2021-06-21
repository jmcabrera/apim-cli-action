FROM openjdk:8

ADD "https://github.com/Axway-API-Management-Plus/apim-cli/releases/download/apimcli-1.3.7/axway-apimcli-1.3.7.tar.gz" "apim.tgz"

RUN tar zxf apim.tgz && rm apim.tgz && mv apim* /apim && ln -s /apim/scripts/apim.sh /apim/scripts/apim

ENV PATH="/apim/scripts/:$PATH"
