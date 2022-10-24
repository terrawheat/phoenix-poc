FROM elixir:latest

RUN mkdir /app
WORKDIR /app

COPY . .

RUN mix local.hex --force && mix compile

CMD ["mix", "phx.server"]

