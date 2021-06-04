resource "aws_api_gateway_integration" "general_api_get" {
  rest_api_id             = aws_api_gateway_rest_api.general_api.id
  resource_id             = aws_api_gateway_method.general_api_get.resource_id
  http_method             = aws_api_gateway_method.general_api_get.http_method
  # "GET"ではなく"POST"にする必要がある
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.general_lambda_api.invoke_arn
}

resource "aws_api_gateway_integration" "general_api_post" {
  rest_api_id             = aws_api_gateway_rest_api.general_api.id
  resource_id             = aws_api_gateway_method.general_api_post.resource_id
  http_method             = aws_api_gateway_method.general_api_post.http_method
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.general_lambda_api.invoke_arn
}

resource "aws_api_gateway_integration" "general_api_put" {
  rest_api_id             = aws_api_gateway_rest_api.general_api.id
  resource_id             = aws_api_gateway_method.general_api_put.resource_id
  http_method             = aws_api_gateway_method.general_api_put.http_method
  integration_http_method = "PUT"
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.general_lambda_api.invoke_arn
}

resource "aws_api_gateway_integration" "general_api_delete" {
  rest_api_id             = aws_api_gateway_rest_api.general_api.id
  resource_id             = aws_api_gateway_method.general_api_delete.resource_id
  http_method             = aws_api_gateway_method.general_api_delete.http_method
  integration_http_method = "DELETE"
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.general_lambda_api.invoke_arn
}

resource "aws_api_gateway_integration" "general_api_options" {
  rest_api_id             = aws_api_gateway_rest_api.general_api.id
  resource_id             = aws_api_gateway_method.general_api_options.resource_id
  http_method             = aws_api_gateway_method.general_api_options.http_method
  integration_http_method = "OPTIONS"
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.general_lambda_api.invoke_arn
}
