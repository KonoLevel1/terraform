# EC2を作成するので"aws_instance"と設定
# "リソースの種類" "リソースの名前"
resource "aws_instance" "study1" {
    ami           = "ami-0f9ae750e8274075b"
    instance_type = "t3.micro"
}