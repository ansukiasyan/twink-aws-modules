provider "aws" {
  region  = var.region
  version = "~>2.0"
}

provider "aws" {
  alias   = "central"
  region  = var.region
  version = "~>2.0"
  assume_role {
    role_arn = "arn:aws:iam::${aws_organizations_account.central.id}:role/OrganizationAccountAccessRole"
  }
}

provider "aws" {
  alias   = "dev"
  region  = var.region
  version = "~>2.0"
  assume_role {
    role_arn = "arn:aws:iam::${aws_organizations_account.dev.id}:role/OrganizationAccountAccessRole"
  }
}

provider "aws" {
  alias   = "prod"
  region  = var.region
  version = "~>2.0"
  assume_role {
    role_arn = "arn:aws:iam::${aws_organizations_account.prod.id}:role/OrganizationAccountAccessRole"
  }
}

resource "aws_organizations_organization" "master" {

}

resource "aws_organizations_account" "central" {
  name  = "central"
  email = "an.sukiasyan+central@gmail.com"

}

resource "aws_organizations_account" "dev" {
  name  = "dev"
  email = "an.sukiasyan+dev@gmail.com"
}

resource "aws_organizations_account" "prod" {
  name  = "prod"
  email = "an.sukiasyan+prod@gmail.com"

}

resource "aws_organizations_account" "stage" {
  name  = "stage"
  email = "an.sukiasyan+stage@gmail.com"
}