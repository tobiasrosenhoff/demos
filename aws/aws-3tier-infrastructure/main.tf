module "aws-3tier-infrastructure" {
  # source = "git::git@github.com:tobiasrosenhoff/terraform-modules.git//aws-3tier-infrastructure?ref=v1.0.0"
  # source = "/local-file-path/terraform-modules/aws-3tier-infrastructure"
   source = "git::git@github.com:tobiasrosenhoff/terraform-modules.git//aws-3tier-infrastructure"

  count_subnet = "2"

  subnet_cidr_blocks = "${var.subnet_cidr_blocks}"
  vpc_cidr = "${var.vpc_cidr}"

  # Tags
  environment = "${var.environment}"
  project = "${var.project}"

}
