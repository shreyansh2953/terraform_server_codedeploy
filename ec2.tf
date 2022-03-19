resource "aws_instance" "ubuntu" {
    ami = var.my_ami
    instance_type = var.my_instance_type
    subnet_id = var.my_subnet_id
    iam_instance_profile = aws_iam_instance_profile.ec2_profile.name
    security_groups = [aws_security_group.allow_tls.id]
    key_name = "mykey"
    

     tags = {
      Name = "CodeDeployDemo"
       }
  
}