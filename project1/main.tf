### creating vpc ####
resource "aws_vpc" "myvpc" {
  cidr_block = var.vpc_cidr
  tags = {
    "Name" = "myvpc"
  }
}
#### creating subnet #########
resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.myvpc.id
  cidr_block = var.sub_cidr
  tags = {
    "Name" = "sub1"
  }
}
#### creating instance ####
resource "aws_instance" "pp1" {
  ami                    = var.ami
  associate_public_ip_address = true
  instance_type          = "t2.micro"
  key_name               = "sunni"
  vpc_security_group_ids = [aws_security_group.sg1.id]
  subnet_id = aws_subnet.subnet1.id

}