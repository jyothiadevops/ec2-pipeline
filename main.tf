resource "aws_instance" "ec2" {
  ami           = "${var.ami}"
  instance_type = "${var.instance_type}"
  availability_zone = "${var.availability_zone}"
  vpc_security_group_ids = "${var.security_groups}"
  subnet_id             = "${var.subnet_id}"
  key                   = "${var.key_name}"
  tags = {
    Name = "${var.instance_name}"
  }
}
