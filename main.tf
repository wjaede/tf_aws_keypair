/* keypair */
resource "aws_key_pair" "bdu" {
key_name = "${var.key_name}"
public_key = "${file("${var.key_path}")}"
}