resource "aws_api_gateway_method" "general_api_get" {
  authorization = "NONE"
  http_method   = "GET"
  resource_id   = aws_api_gateway_resource.general_api.id
  rest_api_id   = aws_api_gateway_rest_api.general_api.id
}

resource "aws_api_gateway_method" "general_api_post" {
  authorization = "NONE"
  http_method   = "POST"
  resource_id   = aws_api_gateway_resource.general_api.id
  rest_api_id   = aws_api_gateway_rest_api.general_api.id
}

resource "aws_api_gateway_method" "general_api_put" {
  authorization = "NONE"
  http_method   = "PUT"
  resource_id   = aws_api_gateway_resource.general_api.id
  rest_api_id   = aws_api_gateway_rest_api.general_api.id
}

resource "aws_api_gateway_method" "general_api_delete" {
  authorization = "NONE"
  http_method   = "DELETE"
  resource_id   = aws_api_gateway_resource.general_api.id
  rest_api_id   = aws_api_gateway_rest_api.general_api.id
}

resource "aws_api_gateway_method" "general_api_options" {
  authorization = "NONE"
  http_method   = "OPTIONS"
  resource_id   = aws_api_gateway_resource.general_api.id
  rest_api_id   = aws_api_gateway_rest_api.general_api.id
}
