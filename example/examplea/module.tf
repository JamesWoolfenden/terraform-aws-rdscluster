module "cluster" {
  source     = "../../"
  kms_key_id = aws_kms_key.pike.arn
}

resource "aws_kms_key" "pike" {
  enable_key_rotation = true
}