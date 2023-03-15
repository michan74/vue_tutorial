# vue_tutorial

## docker build
```sh
docker build -t vue_tutorial .
```

## docker run
```sh
docker run --rm -p 8000:8080 -v /Users/e-sugiura/ghq/github.com/michan74/vue_tutorial:/usr/src/app -it vue_tutorial
```
- `http://localhost:8080/`にアクセスできるようになる

## Project setup
```
npm install
```

### Compiles and hot-reloads for development
```
npm run serve
```

### Compiles and minifies for production
```
npm run build
```

### Lints and fixes files
```
npm run lint
```

### Customize configuration
See [Configuration Reference](https://cli.vuejs.org/config/).
