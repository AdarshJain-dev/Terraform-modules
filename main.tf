#learning hcl

/* multi
line 
comment
*/


#Block
block_type {
    attribute1 = value1
    attribute2 = value2
}

resource "aws_instance" "example" {
  ami           = "ami-123456"
  instance_type = "t2.micro"
  count = 3
  enabled = true
}

#Attributes
key = value

#data types
/*
string = "value"
number = 42
boolean = true false
list = [1, 2, 3]
map = {
  key1 = "value1"
  key2 = "value2"
}
*/


#conditions
resource "aws_instance" "server" {
    instance_type = var.environment == "development" ? "t2.micro" : "t2.small"
}

#functions
locals {
    name = "John"
    fruites = ["apple", "banana", "orange"]
    message = "Hello, ${local.name}!"
}

#resourcedependency
resource "aws_instance" "example" {
  ami           = "ami-123456"
  instance_type = "t2.micro"
}
resource "aws_security_group" "example" {
  name        = "example-sg"
  description = "Example security group"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]   
  } 

}