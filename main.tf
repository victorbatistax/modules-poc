module "site-dedalus" {

resource "aws_instance" "web" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name =  var.key_name
  
  tags = {
    Name = "FrontEnd"
  }
}

resource "aws_instance" "backend" {
  ami           = var.ami
  instance_type = var.instance_type_be
  key_name =  var.key_name
  
  tags = {
    Name = "BankEnd"
  }
}

}
