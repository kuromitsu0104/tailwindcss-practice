# OME-REPORT-FRONTEND

## Project setup

#### 1. nginx の設定ファイルを切り替え

環境に合わせて下記のファイルを nginx.conf にリネーム

```
/nginx
  nginx.conf.prd => デプロイ用
  nginx.conf.dev => ローカル開発用
```

#### 2. docker-compose コマンドでビルド

```
docker-compose build
```

#### 3. docker-compose コマンドで起動

```
docker-compose up
```

#### 4. ocker-compose コマンドで終了

```
docker-compose down
```

## Environment variables

#### 環境変数の受け渡しフロー

```
.env -> docker-compose.yml -> Dockerfile -> Nuxt.js, Rails
```

#### terraform の場合

```
/terraform/.direnv　で管理
```
