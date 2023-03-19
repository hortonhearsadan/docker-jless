FROM alpine:3.17 as builder

RUN apk update && apk add --no-cache curl unzip

RUN curl -LJO https://github.com/PaulJuliusMartinez/jless/releases/download/v0.8.0/jless-v0.8.0-x86_64-unknown-linux-gnu.zip


RUN unzip jless-v0.8.0-x86_64-unknown-linux-gnu.zip

CMD sh