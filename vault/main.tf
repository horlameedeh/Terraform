provider "vault" {
  address = "http://127.0.0.1:8200"
  token   = "hvs.450809j9GrZpaX1p1qq707jf"
}

data "vault_generic_secret" "phone_number" {
  path = "secret/app"
}

output "phone_number" {
  value     = data.vault_generic_secret.phone_number.data["phone_number"]
  sensitive = true
}