provider "aws" {
  region = var.region
}

provider "aws" {
  alias  = "us-west-2"
  region = "us-west-2"
}
