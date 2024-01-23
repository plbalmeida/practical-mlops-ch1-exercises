provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_role" "codebuild_role" {
  name = "codebuild-role-practical-mlops-ch1-exercises"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "codebuild.amazonaws.com"
        }
      },
    ]
  })
}

resource "aws_iam_role_policy" "codebuild_policy" {
  name = "codebuild-policy-practical-mlops-ch1-exercises"
  role = aws_iam_role.codebuild_role.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = [
          "logs:CreateLogGroup",
          "logs:CreateLogStream",
          "logs:PutLogEvents"
        ],
        Resource = "*",
        Effect = "Allow"
      },
      {
        Action = [
          "s3:GetObject",
          "s3:GetObjectVersion",
          "s3:PutObject"
        ],
        Resource = "arn:aws:s3:::nome-do-seu-bucket/*",
        Effect = "Allow"
      },
    ]
  })
}

resource "aws_codebuild_project" "practical_mlops_ch1_exercises" {
  name          = "practical-mlops-ch1-exercises"
  description   = "CodeBuild project for practical-mlops-ch1-exercises"
  build_timeout = "5"

  artifacts {
    type = "NO_ARTIFACTS"
  }

  environment {
    compute_type                = "BUILD_GENERAL1_SMALL"
    image                       = "aws/codebuild/standard:4.0"
    type                        = "LINUX_CONTAINER"
    image_pull_credentials_type = "CODEBUILD"
  }

  source {
    type            = "GITHUB"
    location        = "https://github.com/your_username/your_repo.git"
    git_clone_depth = 1
  }

  service_role = aws_iam_role.codebuild_role.arn
}
