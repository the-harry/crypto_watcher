FROM elixir:1.11.4-alpine

WORKDIR /crypto_watcher

COPY . .

RUN apk add --no-cache inotify-tools build-base git nodejs nodejs-npm

RUN mix local.hex --force && \
    mix local.rebar --force && \
    mix archive.install hex phx_new --force

RUN mix do deps.get, compile && \
    MIX_ENV=test mix do deps.get, compile \
    npm install --prefix assets
