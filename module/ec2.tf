resource "aws_instance" "webserver" {
  ami           = var.amiid
  instance_type = var.machinetype
  key_name      = var.keyname

  tags = {
    Name = var.mytag
  }
}

resource "aws_vpc" "terra_vpc" {
  cidr_block = "10.0.0.0/20"
  tags = {
    Name = "TerraVPC"
  }
}