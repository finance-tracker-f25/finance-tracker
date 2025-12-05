variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ca-central-1"
}

variable "project_name" {
  description = "Name prefix for all infra resources"
  type        = string
  default     = "finance-tracker"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "instance_type" {
  description = "EC2 instance type for backend"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "SSH key name for EC2 access (must exist in AWS Academy)"
  type        = string
  default     = ""
}

variable "frontend_bucket_name" {
  description = "S3 bucket name for hosting frontend"
  type        = string
  default     = "finance-tracker-frontend-bucket"
}
