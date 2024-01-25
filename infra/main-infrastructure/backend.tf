terraform {
  backend "s3" {
    region         = "us-east-1"  
    role_arn       = "arn:aws:iam::413467296690:role/practical-mlops-ch1-exercises-terraform-backend-role"
    bucket         = "terraform-backend-practical-mlops-ch1-exercises"
    key            = "terraform.tfstate"
    dynamodb_table = "terraform-backend-lock-table-practical-mlops-ch1-exercises"
    encrypt        = true
  }
}