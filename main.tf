provider "aws" {
    region = "us-west-1"
} 

resource "aws_instance" "example" {
    ami = "ami-04d1dcfb793f6fa37"
    instance_type = "t2.micro" 

    tags = {
        Name = "terraform-example"
    }
}