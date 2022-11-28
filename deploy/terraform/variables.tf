variable "region" {
  description = "AWS region"
  type        = string
}

variable "name" {
  description = "Prefix for all the terraform resources"
  type        = string
}

variable "tags" {
  description = "Common tags for all the resources"
  type = object({
    Project = string
    Owner   = string
  })
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
}

variable "subnet_cidr_bits" {
  description = "The number of subnet bits for the CIDR. For example, specifying a value 8 for this parameter will create a CIDR with a mask of /24."
  type        = number
}

variable "availability_zones_count" {
  description = "The number of AZs"
  type        = number
  default     = 2
}
