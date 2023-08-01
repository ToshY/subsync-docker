FROM alpine/git AS clone

WORKDIR /app/source

RUN export GIT_SSL_NO_VERIFY=1 \
    && git -C subsync pull 2> /dev/null || git clone https://github.com/xuminic/subsync.git

FROM ubuntu:22.04 AS build

WORKDIR /app

COPY --from=clone /app/source/subsync /app/source

RUN apt-get update \
    && apt-get install -y \
      gcc \
      make \
  && cd /app/source \
  && make \
  && mv /app/source/subsync /app/subsync \
  && rm -rf /app/source \
  && apt-get remove make gcc -y \
  && apt-get autoremove -y \
  && apt-get autoclean -y \
  && apt-get purge -y --auto-remove \
  && rm -rf /var/lib/apt/lists/*

ENTRYPOINT ["/app/subsync"]

CMD ["--help"]
