# terraform
Studying terraform

## 環境導入（MacOS)
### Homebrew導入

1.  Homebrewのサイトにアクセスし、指示に従い導入

https://brew.sh/index_ja 

### Terraform導入

1. ターミナルなどに下記コマンドを入力し、インストール

```$ brew install terraform```

2. AWSのIAMで、アクセスキー及びシークレットキーを発行し、ターミナルからクレデンシャルを登録する

```
$ export AWS_ACCESS_KEY_ID = 自分のアクセスキー
$ export AWS_SECRET_ACCESS_KEY = 自分のシークレットキー
$ export AWS_DEFAULT_REGION = ap-northeast-1
```
### tfenvの導入

1. ターミナルなどに下記コマンドを入力し、インストール

```$ brew install tfenv```

