variable "discord_token" {
  description = "Token du bot Discord"
  type        = string
  sensitive   = true
}

variable "guild_id" {
  description = "Identifiant du serveur Discord à gérer"
  type        = string
}
