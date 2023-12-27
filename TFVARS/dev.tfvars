web-ssh-keyname         = "asad-web-key"
web-ssh-public_key_path = "~/.ssh/id_rsa.pub"

app-ssh-keyname         = "asad-app-key"
app-ssh-public_key_path = "~/.ssh/id_rsa.pub"

web-sg-name = "web-security-grp"
web-sg-port = [80, 443, 22]

app-sg-name = "app-security-grp"
app-sg-port = [80, 443, 22]
main_vpc_id      = "vpc-0d476bdc608fbb79a"



web-ami      = "ami-0230bd60aa48260c6"
web-ec2-type = "t2.micro"

app-ami      = "ami-0230bd60aa48260c6"
app-ec2-type = "t2.micro"