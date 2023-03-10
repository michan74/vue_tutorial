# vue_tutorial
## 準備？
- dockerイメージ作成
```sh
docker build -t vue_tutorial .
```

- vueプロジェクト作成
```sh
docker run --rm vue_tutorial create vue_tutorial
```

- 起動
``sh
docker run --rm -p 8000:8000 -v /Users/e-sugiura/ghq/github.com/michan74/vue_tutorial/Dockerfile -it vue_tutorial npm run server
```

- http://localhost:8000 で確認できる

- 有給の残り
- 給与率 ２日減っているから確認する