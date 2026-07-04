resource "aws_instance" "website_app" {
    ami = "ami-011c04cb040289c2a"
    instance_type = "t3.micro"
    key_name = "mine"
    security_groups = [ aws_security_group.web_sg.name ]
    tags = {
      Name = "website-app"
    }
     user_data = file("userdata.sh")

  
}