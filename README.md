# Project Bedrock — InnovateMart EKS Deployment

## Overview
Production-grade microservices deployment on AWS EKS for AltSchool Karatu 2025 Capstone.

## Architecture
- VPC with public/private subnets across 2 AZs
- EKS cluster (project-bedrock-cluster) with managed node groups
- RDS MySQL and PostgreSQL in private subnets
- DynamoDB for cart persistence
- AWS Load Balancer Controller with ALB ingress
- CloudWatch observability
- S3 + Lambda event-driven processing

## Prerequisites
- AWS CLI configured
- Terraform >= 1.5.0
- kubectl
- helm

## Deployment

### Trigger CI/CD Pipeline
- Create a PR to main → triggers terraform plan
- Merge to main → triggers terraform apply

### Manual Deployment
cd terraform
terraform init
terraform apply -var="student_id=soe-025-4626" -var="mysql_password=YOUR_PASSWORD" -var="postgres_password=YOUR_PASSWORD"

### Access the App
http://k8s-retailap-retailap-3c6aa53d7a-1849148873.us-east-1.elb.amazonaws.com

## Grading Credentials
- IAM User: bedrock-dev-view
- Console URL: https://884028226614.signin.aws.amazon.com/console
# Testing CI/CD pipeline
