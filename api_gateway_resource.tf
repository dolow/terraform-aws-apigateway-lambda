resource "aws_api_gateway_resource" "general_api" {
  rest_api_id = aws_api_gateway_rest_api.general_api.id
  parent_id   = aws_api_gateway_rest_api.general_api.root_resource_id
  path_part   = "{proxy+}"
}
