variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-2"
}

variable "name" {
  description = "Prefix for all the terraform resources"
  type        = string
}
