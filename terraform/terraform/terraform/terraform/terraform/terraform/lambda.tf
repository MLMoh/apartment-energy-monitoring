resource "aws_lambda_function" "process_energy_data" {
  function_name = "processEnergyData"
  role          = aws_iam_role.lambda_exec_role.arn
  handler       = "lambda_function.lambda_handler"
  runtime       = "python3.12"
  timeout       = 10
  filename      = "${path.module}/lambda_payload/lambda_function.zip"
}
