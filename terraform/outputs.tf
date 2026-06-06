output "cluster_endpoint" {
  value = aws_eks_cluster.main.endpoint
}

output "cluster_name" {
  value = aws_eks_cluster.main.name
}

output "region" {
  value = var.region
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "assets_bucket_name" {
  value = "bedrock-assets-soe-025-4626"
}

output "private_subnet_ids" {
  value = aws_subnet.private[*].id
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}

output "node_role_arn" {
  value = aws_iam_role.eks_nodes.arn
}

output "oidc_provider_arn" {
  value = aws_iam_openid_connect_provider.eks.arn
}
