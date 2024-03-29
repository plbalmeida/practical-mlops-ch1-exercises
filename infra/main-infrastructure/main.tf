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
          "ecr:GetAuthorizationToken",
          "ecr:GetDownloadUrlForLayer",
          "ecr:BatchGetImage",
          "ecr:BatchCheckLayerAvailability",
          "ecr:PutImage",
          "ecr:InitiateLayerUpload",
          "ecr:UploadLayerPart",
          "ecr:CompleteLayerUpload"
        ],
        Resource = "*",
        Effect = "Allow"
      },
    ]
  })
}

resource "aws_codebuild_project" "practical_mlops_ch1_exercises" {
  name          = "practical-mlops-ch1-exercises"
  description   = "CodeBuild project for practical-mlops-ch1-exercises"
  build_timeout = "30"

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
    location        = "https://github.com/plbalmeida/practical-mlops-ch1-exercises"
    git_clone_depth = 1
  }

  service_role = aws_iam_role.codebuild_role.arn
}

resource "aws_ecr_repository" "my_repository" {
  name                 = "practical-mlops-ch1-exercises"
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    scan_on_push = true
  }
}
