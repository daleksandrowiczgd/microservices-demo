# data "aws_iam_policy_document" "assume_role_policy" {
#   statement {
#     actions = ["sts:AssumeRole"]

#     principals {
#       type        = "Service"
#       identifiers = ["ec2.amazonaws.com"]
#     }
#   }
# }

# data "aws_iam_policy" "permissions_boundary" {
#   name = "DefaultBoundaryPolicy"
# }

# data "aws_iam_policy" "eks_policy" {
#   name = "AmazonEKSClusterPolicy"
# }

# resource "aws_iam_role" "eks" {
#   name               = format("%s-eks-role", var.name)
#   assume_role_policy = data.aws_iam_policy_document.assume_role_policy.json
#   permissions_boundary = data.aws_iam_policy.permissions_boundary.arn
#   managed_policy_arns = [data.aws_iam_policy.eks_policy.arn]
# }

data "aws_iam_role" "eks" {
  name = format("%s-eks-role", var.name)
}