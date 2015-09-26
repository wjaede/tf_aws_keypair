/* Setup our aws provider */
provider "aws" {
  access_key  = "${var.access_key}"
  secret_key  = "${var.secret_key}"
  region      = "${var.region}"
}
/* keypair */
resource "aws_key_pair" "bdu" {
key_name = "${var.key_name}"
public_key = "${file("${var.key_path}")}"
}