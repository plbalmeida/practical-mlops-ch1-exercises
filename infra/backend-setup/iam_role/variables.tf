variable "account_id" {
  description = "AWS account ID"
  type        = string
  default     = "413467296690"
}

variable "group_name" {
  description = "IAM group name"
  type        = string
  default     = "admin"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "practical-mlops-ch1-exercises"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
