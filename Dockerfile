FROM node:16.15.0
# よくわからないけど入れといた
WORKDIR /usr/src/app

# npm installにpackage.jsonが必要なので、コピー
COPY ./* /usr/src/app

# 多分いらない(初回だけ?)
# RUN npm install -g @vue/cli @vue/cli-init

EXPOSE 8080

CMD ["sh cd vue_tutorial && npm run serve"]

# docker run --rm -p 8000:8080 -v /Users/e-sugiura/ghq/github.com/michan74/vue_tutorial:/usr/src/app -it vue_tutorial sh
# vue create vue_tutorial

# docker run -p 49160:8080 -d <your username>/node-web-app

# docker build -t vue_tutorial .

# npm run serve