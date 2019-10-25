FROM alpine:latest

LABEL "com.github.actions.name"="Hugo Action"
LABEL "com.github.actions.description"="Hugo runtime"
LABEL "com.github.actions.icon"="play-circle"
LABEL "com.github.actions.color"="green"

LABEL "repository"="http://github.com/clvx/hugo-action"
LABEL "homepage"="http://github.com/clvx/hugo-action"

RUN apk add --no-cache hugo bash git

ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
