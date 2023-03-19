FROM node:14.17.6 as app

USER root
RUN apt-get update

WORKDIR /data
COPY . .

RUN npm i

# RUN cd frontend && npm i && npm run build

EXPOSE 3000
RUN set NODE_ENV=production

CMD ["node", "app.js"]