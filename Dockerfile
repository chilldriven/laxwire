FROM node:14.4-alpine

WORKDIR /opt/laxwire

COPY . .

RUN yarn --immutable
RUN yarn build

ENTRYPOINT [ "yarn", "start" ]