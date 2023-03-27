resource "aws_rds_cluster" "pike" {
  #checkov:skip=CKV_AWS_139: Makes hard to modify for this example
  storage_encrypted       = true
  iam_database_authentication_enabled = true
  deletion_protection = false
# backup_retention_period ? 1 is default

#   allow_major_version_upgrade=var.cluster.major_version

copy_tags_to_snapshot=true
# database_name = 
# db_subnet_group_name?
# enable_http_endpoint?
  enabled_cloudwatch_logs_exports=["audit"]
  kms_key_id = var.kms_key_id


# vpc_security_group_ids=""
}