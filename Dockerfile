FROM debian:slim-buster as builder

RUN apt update && apk install --no-cache curl unzip && rm -rf /var/lib/apt/lists/*

RUN curl -LJO https://github.com/PaulJuliusMartinez/jless/releases/download/v0.8.0/jless-v0.8.0-x86_64-unknown-linux-gnu.zip


RUN unzip jless-v0.8.0-x86_64-unknown-linux-gnu.zip
RUN chmod +x jless && mv jless /usr/bin/jless

CMD sh
