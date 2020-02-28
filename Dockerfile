FROM mhart/alpine-node:12 AS build

WORKDIR /app

RUN set -ex \
    # Install build dependencies
    && apk add --no-cache coreutils gcc g++ git make python \
    \
    # Build mini-breakpad-server project
    && git clone https://github.com/electron/mini-breakpad-server.git . \
    && npm install \
    && npx grunt \
    \
    # Clean NPM package
    && rm -r node_modules \
    && npm ci --prod

FROM mhart/alpine-node:slim-12

WORKDIR /app

ENV MINI_BREAKPAD_SERVER_PORT=1127
#    MINI_BREAKPAD_SERVER_ROOT
#    MINI_BREAKPAD_SERVER_TOKEN

VOLUME /app/pool

COPY --from=build /app/node_modules /app/node_modules
COPY --from=build /app/package.json /app/package.json
COPY --from=build /app/views /app/views
COPY --from=build /app/lib /app/lib

EXPOSE 1127

CMD [ "node", "lib/app.js" ]
