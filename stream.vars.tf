variable "streams" {
  type = list(object({
    name           = string # The name of the log stream. Must not be longer than 512 characters and must not contain :
    log_group_name = string # The name of the log group under which the log stream is to be created.
  }))
  description = "List of CloudWatch Log Streams."
  default     = []
}
