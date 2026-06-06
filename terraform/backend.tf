terraform {
  backend "s3" {
    bucket  = "project-bedrock-tfstate-soe-025-4626"
    key     = "prod/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}
