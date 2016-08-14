FROM node:0.10.46

MAINTAINER martinkollaard@gmail.com

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN mkdir -p /data/gulden
RUN mkdir -p /data/inzicht

COPY . /usr/src/app
RUN npm install

ENV BITCOIND_DATADIR /data/gulden
ENV INSIGHT_DB /data/inzicht

ENV NODE_ENV production
ENV INSIGHT_NETWORK livenet

EXPOSE 3000
CMD [ "npm", "start" ]