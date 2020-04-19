FROM alpine:3.11

RUN apk update && apk upgrade
RUN apk add curl

RUN curl -L https://github.com/hasura/graphql-engine/raw/stable/cli/get.sh | ash

ENTRYPOINT [ "hasura" ]
