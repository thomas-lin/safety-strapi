FROM node:16.20-buster

RUN apt-get update && apt-get install -y libvips-dev
ENV NODE_ENV production

WORKDIR /var/safety-strapi
ENV PATH /var/safety-strapi/node_modules/.bin:$PATH
COPY ./ .
RUN yarn install --prod && yarn cache clean
EXPOSE 1337
ENTRYPOINT ["sh","./docker-entrypoint.sh"]
CMD ["yarn", "start"]