
resource "aws_iot_topic_rule" "process_energy_data" {
  name        = "ProcessEnergyDataRule"
  description = "Route incoming IoT messages to Lambda function"
  enabled     = true
  sql         = "SELECT * FROM 'energy/topic'"
  sql_version = "2016-03-23"

  lambda {
    function_arn = aws_lambda_function.process_energy_data.arn
  }
}
