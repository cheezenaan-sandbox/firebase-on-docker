FROM node:carbon-alpine
LABEL maintainer "cheezenaan <cheezenaan@gmail.com>"

WORKDIR /src

RUN set -x && \
  # Introduce Tini to avoid PID 1 problem
  # ref. http://ngzm.hateblo.jp/entry/2017/08/22/185224
  apk add --no-cache tini

ENTRYPOINT ["/sbin/tini", "--"]

RUN set -x && \
  yarn global add firebase-tools && \
  yarn install
