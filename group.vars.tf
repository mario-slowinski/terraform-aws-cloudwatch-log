variable "groups" {
  type = list(object({
    name              = optional(string)      # The name of the log group. If omitted, Terraform will assign a random, unique name.
    name_prefix       = optional(string)      # Creates a unique name beginning with the specified prefix.
    skip_destroy      = optional(bool)        # Set to true if you do not wish the log group (and any logs it may contain) to be deleted at destroy time, and instead just remove the log group from the Terraform state.
    retention_in_days = optional(number)      # Specifies the number of days you want to retain log events in the specified log group.
    kms_key_id        = optional(string)      # The ARN of the KMS Key to use when encrypting log data.
    tags              = optional(map(string)) # A map of tags to assign to the resource.
  }))
  default     = []
  description = "List of CloudWatch Log Groups."
}
