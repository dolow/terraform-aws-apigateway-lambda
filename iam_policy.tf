resource "aws_iam_policy" "general_lambda" {
  name   = "general-lambda"
  policy = data.aws_iam_policy_document.general_lambda.json
}
