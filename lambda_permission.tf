resource "aws_lambda_permission" "general_apigateway_lambda" {
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.general_lambda_api.function_name
  principal     = "apigateway.amazonaws.com"

  source_arn = "${aws_api_gateway_rest_api.general_api.execution_arn}/*/*/*"
}
