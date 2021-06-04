resource "aws_iam_role" "general_lambda" {
  name               = "general-lambda"
  assume_role_policy = file("iam_roles/general_lambda.json")
}
