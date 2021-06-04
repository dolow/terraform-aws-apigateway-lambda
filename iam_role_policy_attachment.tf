resource "aws_iam_role_policy_attachment" "general_lambda_api" {
  role       = aws_iam_role.general_lambda.name
  policy_arn = aws_iam_policy.general_lambda.arn
}
