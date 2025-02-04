resource "aws_iam_user" "full_permissions_user" {
  name = "full-permissions-user"  # Replace with the desired IAM user name
}

resource "aws_iam_user_policy_attachment" "full_permissions_attachment" {
  user       = aws_iam_user.full_permissions_user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}
