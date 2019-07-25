resource "null_resource" "infra" {
    provisioner "local-exec" {
        command = "echo null infra"
    }
}
