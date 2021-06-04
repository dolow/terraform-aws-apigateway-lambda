resource "aws_api_gateway_deployment" "general_api" {
  depends_on = [
    aws_api_gateway_integration.general_api_get,
    aws_api_gateway_integration.general_api_post,
    aws_api_gateway_integration.general_api_put,
    aws_api_gateway_integration.general_api_delete,
    aws_api_gateway_integration.general_api_options,
  ]
  rest_api_id       = aws_api_gateway_rest_api.general_api.id
  stage_name        = "sandbox"
  stage_description = "sandbox stage"
}
