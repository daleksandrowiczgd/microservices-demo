output "cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = aws_eks_cluster.this.endpoint
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = aws_eks_cluster.this.name
}

output "cluster_ca_certificate" {
  value = aws_eks_cluster.this.certificate_authority[0].data
}
