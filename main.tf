resource "aws_instance" "ec2" {
  ami           = "${var.ami}"
  count = "${var.count}"
  instance_type = "${var.instance_type}"
  availability_zone = var.azs[count.index]
  vpc_security_group_ids = "${var.security_groups}"
  subnet_id             = "${var.subnet_id}"
  key                   = "${var.key_name}"
  tags = {
    Name = "${var.hostname}"
    SCTaskNo ="${var.SCTaskNo}"
    Owner = "${var.owner_name}"
    support_group = "${var.support_group}"
    Application = "${var.Application}"
    BU = "${var.BU}"
    Maintinance_Window = "${var.Maintinance_Window}"
    Environment = "${var.Environment}"
    Automation = "${var.Automation}"
    Backup = "${var.Backup}"
    
  }
}
