FROM debian:bullseye-slim as builder

RUN apt update && apt install -y curl unzip \
     && rm -rf /var/lib/apt/lists/*


RUN curl -LJO https://github.com/PaulJuliusMartinez/jless/releases/download/v0.8.0/jless-v0.8.0-x86_64-unknown-linux-gnu.zip


RUN unzip jless-v0.8.0-x86_64-unknown-linux-gnu.zip && rm jless-v0.8.0-x86_64-unknown-linux-gnu.zip
RUN chmod +x jless


FROM debian:bullseye-slim as runner
COPY --from=builder jless /usr/bin/jless

RUN apt update && apt install -y libxcb1-dev libxcb-render0-dev libxcb-shape0-dev libxcb-xfixes0-dev \
     && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["jless"]

CMD ["--help"]