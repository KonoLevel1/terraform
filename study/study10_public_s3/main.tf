# パブリックバケットの定義
resource "aws_s3_bucket" "public" {
  # バケット名設定　一意である必要があるため、他人が使ってるものは使用できない
  bucket = "public-konolevel1-bucket"
  # アクセス権設定　
  acl = "public-read"

  # 許可する項目の設定
  cors_rule {
    allowed_origins = ["https://example.com"]
    allowed_methods = ["GET"]
    allowed_headers = ["*"]
    max_age_seconds = 3000
  }
}