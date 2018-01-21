FROM node:9.4
MAINTAINER juan.labattaglia@snappler.com

RUN npm install -g git+https://github.com/LucyBot-Inc/api-spec-converter.git#cc57ee74f620cb05f1c31da22e67e5fe55e46a6b --unsafe-perm=true --allow-root

CMD api-spec-converter /tmp/$OPENAPI_FILE --from=openapi_3 --to=swagger_2 | sed -e 's/"example".*//g'
