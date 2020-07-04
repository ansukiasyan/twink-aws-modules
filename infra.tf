module "webserver" {
  source        = "./modules/webserver"
  central_acc   = aws_organizations_account.central.id
  ssh_key       = var.ssh_key
  s3_arn        = module.s3_bucket.bucket_arn
  s3_object_key = module.s3_bucket.s3_object_key

  providers = {
    aws.dev = "aws.dev"
  }
}

module "s3_bucket" {
  source    = "./modules/s3"
  dev_acc   = aws_organizations_account.dev.id
  s3_bucket = "annas-twink-s3"

  providers = {
    aws.central = "aws.central"
  }
}

module "lamda_orchestrator" {
  source          = "./modules/orchestrator"
  lambda_role_arn = module.webserver.lambda_role_arn

  providers = {
    aws.central = "aws.central"
  }
}