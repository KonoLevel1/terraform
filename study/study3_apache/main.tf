# アパッチをインストールしたEC2を構築
resource "aws_instance" "study3" {
  ami           = "ami-0f9ae750e8274075b"
  instance_type = "t3.micro"

  tags = {
    Name = "study3"
  }

  user_data = <<EOF
    #!/bin/bash
    yum install -y httpd
    systemctl start httpd.service
EOF
}
