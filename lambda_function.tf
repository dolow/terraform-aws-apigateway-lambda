resource "aws_lambda_function" "general_lambda_api" {
  filename      = "functions.zip"
  function_name = "general-lambda-api"
  role          = aws_iam_role.general_lambda.arn
  handler       = "lambda"
  runtime       = "go1.x"

  memory_size = 128
  timeout     = 900
}
