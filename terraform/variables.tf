variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "project-bedrock-cluster"
}

variable "vpc_name" {
  description = "VPC name tag"
  type        = string
  default     = "project-bedrock-vpc"
}

variable "student_id" {
  description = "Your student ID for unique resource naming"
  type        = string
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "availability_zones" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "public_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  type    = list(string)
  default = ["10.0.3.0/24", "10.0.4.0/24"]
}

variable "eks_version" {
  type    = string
  default = "1.34"
}

variable "node_instance_type" {
  type    = string
  default = "t3.small"
}

variable "node_desired_count" {
  type    = number
  default = 2
}

variable "node_min_count" {
  type    = number
  default = 1
}

variable "node_max_count" {
  type    = number
  default = 3
}

variable "mysql_password" {
  description = "MySQL RDS password"
  type        = string
  sensitive   = true
}

variable "postgres_password" {
  description = "PostgreSQL RDS password"
  type        = string
  sensitive   = true
}
# managed by terraform
