FROM node:16.15.0
# よくわからないけど入れといた
WORKDIR /usr/src/app

# RUN npm install -g @vue/cli @vue/cli-init

EXPOSE 8000

# CMD ["cd vue-sample && npm run serve"]
CMD ["sh"]

# docker run --rm -p 8000:8000 -v /Users/e-sugiura/ghq/github.com/michan74/vue_tutorial/Dockerfile -it 4e18136e3275 sh
# vue create vue_tutorial

# docker build -t vue_tutorial .