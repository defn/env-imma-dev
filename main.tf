provider "aws" {
  region = "${var.provider_region}"
}

module "imma" {
  source = "../env-imma"

  provider_region = "${var.provider_region}"

  vpc_name = "${var.vpc_name}"
  vpc_cidr = "${var.vpc_cidr}"

  az_count = "${length(split(" ",var.az_names))}"
  az_names = "${var.az_names}"

  nat_cidrs = "${var.nat_cidrs}"
}
