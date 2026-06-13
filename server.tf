resource "aws_instance" "george_instance" {
  ami           = "ami-091138d0f0d41ff90"
  instance_type = "t3.micro"

  tags = {
    Name = "george_first_server"
  }

  primary_network_interface {
    network_interface_id = aws_network_interface.network_interface.id
  }
}




resource "aws_network_interface" "network_interface" {
  subnet_id   = aws_subnet.main_subnet_1.id
  private_ips = ["10.0.1.20"]

  tags = {
    Name = "my_interface"
  }
}




