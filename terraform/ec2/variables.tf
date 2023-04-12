// Required metadata
variable "region" {
  type = string
}

variable "env" {
  type = string
}

variable "app" {
  type = string
}

variable "account" {
  type = string
}

variable "profile" {
  type = string
}

// Specific vars
variable "ami" {
  type    = string
  default = "ami-0f28f24910375a30a"
}

variable "ec2type" {
  type    = string
  default = "t3.medium"
}

variable "vpc_id" {
  type    = string
  default = "vpc-dad992a2"
}
