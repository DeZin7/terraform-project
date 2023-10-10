provider "aws" {
    region = "us-west-1"
} 

resource "aws_instance" "example" {
    ami = "ami-04d1dcfb793f6fa37"
    instance_type = "t2.micro" 

    user_data = <<-EOF
                #!/bin/bash
                echo "Hello World" > index.html
                nohup busybox httpd -f -p 8080 &
                   EOF

    user_data_replace_on_change = true 

    tags = {
        Name = "terraform-example"
    }
}