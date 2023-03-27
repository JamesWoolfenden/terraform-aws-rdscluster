variable "plan" {
  type= object({
    name = string
    target_vault_name = string
    schedule          = string
  })
  default = {
    name         = "tf_example_backup"
    target_vault_name = "vault-name"
    schedule          = "cron(0 12 * * ? *)"
  }
}

variable "kms_key_id" {
  type=string
}