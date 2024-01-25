resource "aws_iam_role" "role" {
  name = "${var.project_name}-TerraformBackendRole"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          AWS = "arn:aws:iam::${var.account_id}:group/${var.group_name}"
        }
      }
    ]
  })
}

resource "aws_iam_policy" "policy" {
  name        = "${var.project_name}-TerraformBackendAccessPolicy"
  description = "Policy that grants full access to accounts-terraform-backend S3 bucket"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow",
        Action = [
          "s3:ListBucket", 
          "s3:GetObject", 
          "s3:PutObject",
          "s3:DeleteObject"
        ],
        Resource = [
          "arn:aws:s3:::terraform-backend-${var.project_name}", 
          "arn:aws:s3:::terraform-backend-${var.project_name}/*"
        ]
      },
      {
        Effect: "Allow",
        Action: [
          "dynamodb:GetItem",
          "dynamodb:PutItem",
          "dynamodb:DeleteItem"
        ],
        Resource: [
          "arn:aws:dynamodb:${region}:${account_id}:table/terraform-backend-lock-table-${var.project_name}"
        ]
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "this" {
  policy_arn = aws_iam_policy.policy.arn
  role       = aws_iam_role.role.name
}