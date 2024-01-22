# 1. npm install
# 2. npm run build
# 3. on runtime: statically serve the build folder

FROM node:20

COPY . /react-app

WORKDIR /react-app

RUN npm ci
RUN npm run build

RUN npm install -g serve
CMD serve -s build
