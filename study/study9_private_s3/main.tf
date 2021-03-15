resource "aws_s3_bucket" "private" {
    # バケット名設定　一意である必要があるため、他人が使ってるものは使用できない
    bucket = "private-konolevel1-bucket"

    # バージョニング設定　有効の場合、オブジェクトを変更や削除しても、以前のバージョンに復元できる
    versioning {
        enabled = true
    }

    # 暗号化設定　オブジェクト保存時に暗号化されるようになる
    server_side_encryption_configuration {
        rule {
            apply_server_side_encryption_by_default {
                sse_algorithm = "AES256"
            }
        }
    }       
}

# ブロックパブリックアクセス設定
resource "aws_s3_bucket_public_access_block" "private" {
    bucket = aws_s3_bucket.private.id
    block_public_acls = true
    block_public_policy = true
    ignore_public_acls = true
    restrict_public_buckets = true
}

