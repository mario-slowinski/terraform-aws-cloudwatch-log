output "groups" {
  description = "CloudWatch Log Groups."
  value = {
    for group in aws_cloudwatch_log_group.name :
    coalesce(group.name, group.name_prefix) => group
  }
}
