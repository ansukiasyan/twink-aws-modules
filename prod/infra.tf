module "cross-account-infra" {
  source         = "/home/annas/work/twink-aws-modules/modules"
  bootstrap_file = "/home/annas/work/twink-aws-modules/cloud-config/web_server_init.sh"
  central_acc    = aws_organizations_account.central.id
  html           = "/home/annas/work/twink-aws-modules/prod/index.html"
  dev_acc        = aws_organizations_account.dev.id
  lambda_code    = "/home/annas/work/twink-aws-modules/prod/ec2_orchestration.py"
  s3_bucket      = "annas-twink-s3-prod"
  ssh_key        = var.ssh_key
  providers = {
    aws.central = "aws.central"
    aws.dev     = "aws.dev"
    aws.prod    = "aws.prod"
  }
}