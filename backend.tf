terraform {
  backend "s3" {
    bucket         = "my-s3-bcktremote" 
    key            = "dev/terraform.tfstate"          
    region         = "us-east-2"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}
