FROM node:16
WORKDIR /app
COPY ["package.json", "yarn.lock", "./"]
RUN yarn install --production --frozen-lockfile

COPY . .
RUN yarn build
CMD yarn start
