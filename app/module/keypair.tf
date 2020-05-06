resource "aws_key_pair" "Mac" {
  key_name   = "Azymberdi_Macbook"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}