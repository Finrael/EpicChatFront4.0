# FROM node:10.8.0-alpine as node
# RUN mkdir -p /app
# WORKDIR /app
# COPY package.json /app
# RUN npm install
# COPY ./build  /app
# EXPOSE 3000
# CMD ["npm", "start"]

FROM nginx:alpine
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
COPY ./build  /usr/share/nginx/html
# COPY ./nginx.conf /etc/nginx/conf.d/default.conf
