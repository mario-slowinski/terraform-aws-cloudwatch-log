resource "aws_cloudwatch_log_stream" "name" {
  for_each = {
    for stream in var.streams :
    stream.name => stream
  }

  name           = each.value.name
  log_group_name = each.value.log_group_name
}
