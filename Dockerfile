FROM node:16-alpine

WORKDIR /usr/src/app

RUN apk update && apk add git && npm i -g ts-node && git clone https://github.com/blinker-iot/blinker-js.git && cd blinker-js && npm i

EXPOSE 81

CMD [ "ts-node", "blinker-js/example/example_hello.ts" ]
