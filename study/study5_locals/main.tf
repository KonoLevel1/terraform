locals {
  study_instance_type = "t3.nano"
}

resource "aws_instance" "study5" {
  ami           = "ami-0f9ae750e8274075b"
  instance_type = local.study_instance_type

  tags = {
    Name = "study5"
  }
}

output "study_instance_id" {
    value = "aws_instance.study.id"
}