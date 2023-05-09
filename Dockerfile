FROM node:lts-alpine as build-step

RUN mkdir -p /app

WORKDIR /app

COPY package.json /app

# RUN npm install

COPY . /app

RUN npm run build --prod

FROM nginx:stable-alpine as production-stage

COPY  --from=build-step /app/dist/cifrado-afin /usr/share/nginx/html
COPY /nginx.conf  /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]