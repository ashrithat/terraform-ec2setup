region = "us-east-2"

instances = [
  {
    name          = "web-server-1"
    ami           = "ami-0432d6eb1918ce708"
    instance_type = "t2.micro"
    subnet_id     = "subnet-032ba554994e26a59"
  },
  {
    name          = "app-server-1"
    ami           = "ami-0432d6eb1918ce708"
    instance_type = "t3.small"
    subnet_id     = "subnet-032ba554994e26a59"
  },
  {
    name          = "db-server-1"
    ami           = "ami-0432d6eb1918ce708"
    instance_type = "t3.medium"
    subnet_id     = "subnet-032ba554994e26a59"
  }
]
