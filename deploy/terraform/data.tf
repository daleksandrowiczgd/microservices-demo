data "aws_availability_zones" "available" {}

data "aws_iam_policy" "permissions_boundary" {
  name = "DefaultBoundaryPolicy"
}