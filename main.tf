// terraform/main.tf

provider "aws" {
  region = "us-east-1"
}

resource "aws_iam_role" "example_role" {
  name = "JEB"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_policy" "example_policy" {
  name = "example_policy"
  description = "A test policy"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "ec2:Describe*"
        ]
        Effect   = "Allow"
        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "example_attach" {
  role       = aws_iam_role.example_role.name
  policy_arn = aws_iam_policy.example_policy.arn
}
