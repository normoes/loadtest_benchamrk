FROM alpine:3.8

RUN apk update && apk --no-cache add nodejs nodejs-npm \
    && npm install -g loadtest

ENTRYPOINT ["sh"]
