# EC2にタグを設定して作成する
resource "aws_instance" "study2" {
  ami           = "ami-0f9ae750e8274075b"
  instance_type = "t3.micro"

  tags = {
    Name = "study2"
  }
}