terraform {
  backend "s3" {
    region         = "${var.region}"    
    role_arn       = "arn:aws:iam::${var.account_id}:role/${project_name}-TerraformBackendRole"
    bucket         = "terraform-backend-${project_name}"
    key            = "terraform.tfstate"
    dynamodb_table = "terraform-backend-lock-table-${project_name}"
    encrypt        = true
  }
}