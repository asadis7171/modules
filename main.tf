module "web_ssh_key_pair" {
  source          = "./modules/SSH_KEY"
  keyname         = var.web-ssh-keyname
  public_key_path = var.web-ssh-public_key_path
}

module "app_ssh_key_pair" {
  source          = "./modules/SSH_KEY"
  keyname         = var.app-ssh-keyname
  public_key_path = var.app-ssh-public_key_path
}



module "web-sec-grp" {
  source  = "./modules/SG"
  sg-name = var.web-sg-name
  sg-port = var.web-sg-port
  vpc_id  = var.main_vpc_id
}

module "app-sec-grp" {
  source  = "./modules/SG"
  sg-name = var.app-sg-name
  sg-port = var.app-sg-port
  vpc_id  = var.main_vpc_id

}



module "web_ec2_instance" {
  source          = "./modules/EC2"
  ami-id          = var.web-ami
  ec2-type        = var.web-ec2-type
  keyname         = module.web_ssh_key_pair.ssh-key-output
  security-groups = module.web-sec-grp.SECURITY_GROUP_ID
}



module "app_ec2_instance" {
  source          = "./modules/EC2"
  ami-id          = var.app-ami
  ec2-type        = var.app-ec2-type
  keyname         = module.app_ssh_key_pair.ssh-key-output
  security-groups = module.app-sec-grp.SECURITY_GROUP_ID
}