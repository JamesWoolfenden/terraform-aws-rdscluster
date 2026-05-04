module "cluster" {
  source     = "../../"
  kms_key_id = aws_kms_key.pike.arn
}

resource "aws_kms_key" "pike" {
  # checkov:skip=CKV2_AWS_64: For example only, key policy managed via IAM
  enable_key_rotation = true
}
