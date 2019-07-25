terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "popa-org"

    workspaces {
      name = "my-app-dev"
    }
  }
}

resource "null_resource" "infra" {
    provisioner "local-exec" {
        command = "echo null infra"
    }
}
