locals {
  service_name = "my-project"
  owner        = "Jayden"
}

output "owner-name" {
  value = local.owner
}
