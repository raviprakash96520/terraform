resource "aws_instance" "this" {
    ami   = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = []
    instance_type = "t2.micro"
    tags = {
        Name = "terraform-demo"
        Purpose = "terraform-practice"
    }
  
}


resource "aws_security_group" "sg" {
    name = "ec2-sg"
    description = "this is for terraform practice"

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]

    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
      Name = "terraform-practice-sg"
    }
  
}