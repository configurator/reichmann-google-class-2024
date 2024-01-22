FROM node:20 as builder

COPY . /react-app

WORKDIR /react-app

RUN npm ci
RUN npm run build

###############################

FROM nginx:alpine

COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder /react-app/build /usr/share/nginx/html
