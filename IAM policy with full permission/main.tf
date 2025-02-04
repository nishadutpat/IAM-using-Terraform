resource "aws_iam_policy" "full_permissions_policy" {
  name        = "FullPermissionsPolicy"
  description = "policy with full access"
  policy      = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = "*"
        Resource = "*"
      }
    ]
  })
}
