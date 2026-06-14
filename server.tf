
variable "my_instance_os" {
    default = "ami-091138d0f0d41ff90"
  
}

# Check/Create 'terrform.tfvars' file in it specify it as ---> i.e;my_instance_type = "t3.micro"
variable "my_instance_type" {}




resource "aws_instance" "george_instance-1" {
    
    count = 3
    
    ami           = var.my_instance_os
    instance_type = var.my_instance_type

    tags = {
        Name = "george_server_${count.index+1}"
    }

#   primary_network_interface {
#     network_interface_id = aws_network_interface.network_interface.id
#   }
}

# resource "aws_network_interface" "network_interface" {
#   subnet_id   = aws_subnet.main_subnet_1.id
#   private_ips = ["10.0.1.20"]

#   tags = {
#     Name = "my_interface"
#   }
# }




