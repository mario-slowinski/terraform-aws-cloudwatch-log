resource "aws_cloudwatch_log_group" "name" {
  for_each = {
    for group in var.groups :
    coalesce(group.name, group.name_prefix) => group
  }

  name              = each.value.name
  name_prefix       = each.value.name_prefix
  skip_destroy      = each.value.skip_destroy
  retention_in_days = each.value.retention_in_days
  kms_key_id        = each.value.kms_key_id
  tags              = each.value.tags
}
