data "terraform_remote_state" "infra" {
  backend = "s3"
  config = {
    bucket = "state-class-azym"
    key = "path/to/my/key/"
    region = "us-east-1"
  }
}

output "Infra" {
  value = "${data.terraform_remote_state.infra.*}"
}
