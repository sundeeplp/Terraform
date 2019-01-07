provider "aws" {
        region = "us-east-1"
        profile = "default"
}

# Creating Instance

resource "aws_instance" "example" {
        ami = "ami-0080e4c5bc078760e"
        instance_type = "t2.micro"
        tags {
                Name = "terraform-example"
        }
        key_name = "sunkp"
        vpc_security_group_ids = ["sg-00a0aeef9fd6f1992"]
}

output "public_ip" {
        value = "${aws_instance.example.public_ip}"
        }
