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

resource "random_id" "server" {
  byte_length = 8
}

output "random_server" {
  value = "${random_id.server.id}"
  description = "Random resource ID"
}
