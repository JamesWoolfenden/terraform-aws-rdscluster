
resource "aws_backup_plan" "pike" {
  name = "${var.plan.name}_plan"

  rule {
    rule_name         = "${var.plan.name}_rule"
    target_vault_name = var.plan.target_vault_name
    schedule          = var.plan.schedule
  }
}

