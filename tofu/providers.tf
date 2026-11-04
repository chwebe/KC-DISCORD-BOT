provider "discord" {
  token             = var.discord_token
  audit_log_reason  = "Managed by OpenTofu"
}
