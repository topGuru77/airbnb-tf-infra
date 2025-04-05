#Creating web server for airbnb

resource "aws_instance" "airbnb-web-server" {
  ami           =var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "airbnb-web-server"
  }
}

#Creating prod server for airbnb
#Creating dev server for airbnb
resource "aws_instance" "airbnb-prod-server" {
  ami           =var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "airbnb-prod-server"
  }
}

resource "aws_instance" "airbnb-stage-server" {
  ami           =var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "airbnb-stage-server"
  }
}