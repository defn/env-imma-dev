provider "aws" {
  region = "${var.provider_region}"
}

module "imma" {
  source = "../env-imma"

  provider_region = "${var.provider_region}"

  vpc_name = "${var.vpc_name}"
  vpc_cidr = "${var.vpc_cidr}"

  az_names = "${var.az_names}"

  nat_cidrs = "${var.nat_cidrs}"

  bucket_remote_state = "${var.bucket_remote_state}"
  context_org = "${var.context_org}"
  context_env = "${var.context_env}"
}
