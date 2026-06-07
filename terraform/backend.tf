terraform {
  backend "s3" {
    bucket  = "project-bedrock-tfstate-nnamdi12345"
    key     = "prod/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
