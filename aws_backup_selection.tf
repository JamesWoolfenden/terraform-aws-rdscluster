
resource "aws_backup_selection" "backup_good" {
  iam_role_arn = aws_iam_role.backup.arn
  name         = "${var.plan.name}_selection"
  plan_id      = aws_backup_plan.pike.id

  resources = [
    aws_rds_cluster.pike.arn
  ]
}

