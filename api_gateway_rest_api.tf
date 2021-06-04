resource "aws_api_gateway_rest_api" "general_api" {
  name        = "general-lambda-api"
  description = "general lambda api"
  policy      = data.aws_iam_policy_document.general_api_policy.json
}
