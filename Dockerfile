FROM node:16.15.0
# よくわからないけど入れといた
WORKDIR /usr/src/app



EXPOSE 8000

# CMD ["cd vue-sample && npm run serve"]
CMD ["sh"]

# docker run --rm -p 8000:8000 -v /Users/e-sugiura/ghq/github.com/michan74/vue_tutorial/Dockerfile -it vue