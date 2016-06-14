variable "bucket_remote_state" { }
variable "context_org" { }
variable "context_env" { }
variable "vpc_name" { }
variable "vpc_cidr" { }
variable "az_count" { }

provider "aws" { }

module "imma" {
  source = "../env-imma"

  bucket_remote_state = "${var.bucket_remote_state}"
  context_org = "${var.context_org}"
  context_env = "${var.context_env}"

  az_count = "${var.az_count}"

  vpc_name = "${var.vpc_name}"
  vpc_cidr = "${var.vpc_cidr}"
}

output "vpc_id" {
  value = "${module.imma.vpc_id}"
}
