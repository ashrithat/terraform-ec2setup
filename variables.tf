
variable "region" {
  description = "AWS region to deploy EC2 instances"
  type        = string
  default     = "us-east-2"
}

variable "instances" {
  description = "List of EC2 instance configurations"
  type = list(object({
    name          = string
    ami           = string
    instance_type = string
    subnet_id     = string
  }))
}

