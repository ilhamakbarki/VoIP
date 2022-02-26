FROM node:14.17.6 as app

USER root
WORKDIR /data
COPY . .

RUN npm i

RUN cd frontend
RUN npm i
RUN npm run build

EXPOSE 3000
CMD [ "npm run start" ]