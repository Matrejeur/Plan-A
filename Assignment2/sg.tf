resource "aws_security_group" "sg1" {
    name_prefix = "sg1"
    vpc_id = module.vpc.vpc_id

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"

        cidr_blocks = [
            "10.0.0.0/8"
        ]
        
        {
      description      = "HTTP from VPC"
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    },
        
        {
      description      = "Application Port"
      from_port        = 8010
      to_port          = 8010
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    },
    }
}

resource "aws_security_group" "sg2" {
    name_prefix = "sg2"
    vpc_id = module.vpc.vpc_id
 
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"

        cidr_blocks = [
            "10.0.0.0/8"
        ]
    }
}
    
    

resource "aws_security_group" "sg3" {
    name_prefix = "sg3"
    vpc_id = module.vpc.vpc_id

    ingress {
        from_port = 443
        to_port = 443
        protocol = "tcp"

        cidr_blocks = [
            "10.0.0.0/8"
        ]
    }
}
