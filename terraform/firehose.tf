resource "aws_kinesis_firehose_delivery_stream" "data_stream" {
  name        = "iot-data-stream"
  destination = "s3"

  s3_configuration {
    role_arn           = aws_iam_role.lambda_exec_role.arn
    bucket_arn         = aws_s3_bucket.data_bucket.arn
    buffer_size        = 5
    buffer_interval    = 300
    compression_format = "GZIP"
  }
}
