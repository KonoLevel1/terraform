# リージョンの明示的な定義
provider "aws" {
    region = "ap-northeast-1"
}

# EC2の構築
resource "aws_instance" "study7" {
  ami           = "ami-0f9ae750e8274075b"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.study7.id]

  # Apacheのインストール
  user_data = <<EOF
    #!/bin/bash
    yum install -y httpd
    systemctl start httpd.service
EOF
}

# セキュリティグループの定義
resource "aws_security_group" "study7"{
    # study7 というセキュリティグループを作成
    name = "study7"

    # インバウンドルールの設定
    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    # アウトバウンドルールの設定
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

output "study7_publci_dns" {
    value = aws_instance.study7.public_dns
}
