FROM node:16.15.0

WORKDIR /usr/src/app

# npm installにpackage.jsonが必要なので、コピー
COPY ./* /usr/src/app

# 多分いらない(初回だけ?)
# RUN npm install -g @vue/cli @vue/cli-init

EXPOSE 8080

CMD npm run serve