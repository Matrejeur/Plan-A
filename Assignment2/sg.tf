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
        from_port = 22
        to_port = 22
        protocol = "tcp"

        cidr_blocks = [
            "10.0.0.0/8"
        ]
    }
}
