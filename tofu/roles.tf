data "discord_permission" "moderator" {
  allow = ["administrator"]
}

resource "discord_role" "moderator" {
  server_id   = var.guild_id
  name        = "Moderator"
  permissions = data.discord_permission.moderator.allow_bits

  color       = 15158332
  hoist       = true
  mentionable = true
}