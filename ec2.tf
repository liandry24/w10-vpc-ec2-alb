// instance1
resource "aws_instance" "server1" {
  ami           = "ami-03972092c42e8c0ca"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.private1.id
  # security_groups = [aws_security_group.sg-demo.name]
  vpc_security_group_ids = [aws_security_group.sg-demo1.id]
 // key_name      = aws_key_pair.aws_key.key_name
  user_data     = file("setup.sh")
  tags ={
    Name = "web1"
  }
  availability_zone = "us-east-1a"
}
// instance2
resource "aws_instance" "server2" {
  ami           = "ami-03972092c42e8c0ca"
  instance_type = "t2.micro"
  subnet_id = aws_subnet.private2.id
  # security_groups = [aws_security_group.sg-demo.name]
  vpc_security_group_ids = [aws_security_group.sg-demo1.id]
 // key_name      = aws_key_pair.aws_key.key_name
  user_data     = file("setup.sh")
  tags ={
    Name = "web2"
  }
  availability_zone = "us-east-1b"
}