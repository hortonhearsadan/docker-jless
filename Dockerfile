FROM debian:buster-slim as builder

RUN apt update && apt install -y curl unzip libxcb1-dev libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev \
     && rm -rf /var/lib/apt/lists/*

RUN curl -LJO https://github.com/PaulJuliusMartinez/jless/releases/download/v0.8.0/jless-v0.8.0-x86_64-unknown-linux-gnu.zip


RUN unzip jless-v0.8.0-x86_64-unknown-linux-gnu.zip && rm jless-v0.8.0-x86_64-unknown-linux-gnu.zip
RUN chmod +x jless && mv jless /usr/bin/jless

CMD sh
