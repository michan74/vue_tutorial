FROM node:16.15.0
# よくわからないけど入れといた
WORKDIR /usr/src/app

COPY ./package.json /usr/src/app/package.json

RUN npm install -g @vue/cli @vue/cli-inits

EXPOSE 8000

# CMD ["cd vue-sample && npm run serve"]
CMD ["sh"]

# docker run --rm -p 8000:8000 -v /Users/e-sugiura/ghq/github.com/michan74/vue_tutorial -it vue_tutorial sh
# vue create vue_tutorial

# docker build -t vue_tutorial .