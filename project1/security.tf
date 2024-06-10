resource "aws_security_group" "sg1" {
  vpc_id = aws_vpc.myvpc.id
  depends_on = [
    aws_vpc.myvpc
  ]
  ingress {
    from_port   = "8080"
    to_port     = "8080"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]



  }

}