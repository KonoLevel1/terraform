variable "study_instance_type" {
  default = "t3.micro"
}

resource "aws_instance" "study4" {
  ami           = "ami-0f9ae750e8274075b"
  instance_type = var.study_instance_type

  tags = {
    Name = "study4"
  }
}