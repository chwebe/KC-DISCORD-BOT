resource "discord_category_channel" "important" {
  server_id = var.guild_id
  name      = "Important"
}

resource "discord_text_channel" "règlement" {
  server_id = var.guild_id
  name      = "règlement"
  category  = discord_category_channel.important.id
  topic     = "Le règlement du serveur de KC LYON"
}

resource "discord_text_channel" "FAQ" {
  server_id = var.guild_id
  name      = "faq"
  category  = discord_category_channel.important.id
  topic     = "La FAQ du serveur de KC LYON"
}

resource "discord_category_channel" "blabla" {
  server_id = var.guild_id
  name      = "bla-bla"
}

resource "discord_text_channel" "ref_annonces" {
  server_id = var.guild_id
  name      = "annonces"
  category  = discord_category_channel.blabla.id
  topic     = "Les annonces du serveur en lecture seul pour les membres. Seul les référents peuvent écrire des messages"
}

resource "discord_text_channel" "général" {
  server_id = var.guild_id
  name      = "général"
  category  = discord_category_channel.blabla.id
  topic     = "Canal général pour parler de tout et n'importe quoi"
}

resource "discord_text_channel" "ref_sondage" {
  server_id = var.guild_id
  name      = "sondage"
  category  = discord_category_channel.blabla.id
  topic     = "Sondage pour les VPs et autres évènements administré par les référents."
}

resource "discord_text_channel" "safe_place" {
  server_id = var.guild_id
  name      = "safe-place"
  category  = discord_category_channel.blabla.id
  topic     = "Une safe place pour les femmes et/ou les LGBTQI+ et/ou toutes personnes en ressentant le besoin. Seul les référents peuvent voir les messages ici"
}

resource "discord_category_channel" "IRL" {
  server_id = var.guild_id
  name      = "IRL"
}

resource "discord_text_channel" "activités-irl" {
  server_id = var.guild_id
  name      = "activités-irl"
  category  = discord_category_channel.IRL.id
  topic     = "S'organiser pour faire des activités IRL :)"
}

resource "discord_text_channel" "kc-sport" {
  server_id = var.guild_id
  name      = "kc-sport"
  category  = discord_category_channel.IRL.id
  topic     = "Envie de faire du sport ? Proposez ici"
}

resource "discord_text_channel" "kc-fashion" {
  server_id = var.guild_id
  name      = "kc-fashion"
  category  = discord_category_channel.IRL.id
  topic     = "Montrez vos plus beaux OOTD"
}

resource "discord_text_channel" "kc-cinema" {
  server_id = var.guild_id
  name      = "kc-cinema"
  category  = discord_category_channel.IRL.id
  topic     = "ici on parle cinéma et on s'oganise des cinés !"
}

resource "discord_text_channel" "kc-gourmand-es" {
  server_id = var.guild_id
  name      = "kc-gourmand-es"
  category  = discord_category_channel.IRL.id
  topic     = "Montrez-nous vos meilleures plats et qui sait invitez-nous à les déguster ?"
}

resource "discord_text_channel" "on-est-des-animaux" {
  server_id = var.guild_id
  name      = "on-est-des-animaux"
  category  = discord_category_channel.IRL.id
  topic     = "DES PHOTOS DE VOS ANIMAUX"
}

resource "discord_category_channel" "Adhérent" {
  server_id = var.guild_id
  name      = "Adhérent"
}

resource "discord_text_channel" "general-adherent" {
  server_id = var.guild_id
  name      = "general-adherent"
  category  = discord_category_channel.Adhérent.id
  topic     = "Channel réservé aux adhérents LBW - Permet de discuter des évènements LBW"
}

resource "discord_category_channel" "Blue-Humanity" {
  server_id = var.guild_id
  name      = "Blue Humanity"
}

resource "discord_text_channel" "don-de-sang" {
  server_id = var.guild_id
  name      = "don-de-sang"
  category  = discord_category_channel.Blue-Humanity.id
  topic     = "Campagne de don du sang"
}


resource "discord_category_channel" "média" {
  server_id = var.guild_id
  name      = "média"
}

resource "discord_text_channel" "photos" {
  server_id = var.guild_id
  name      = "photos"
  category  = discord_category_channel.média.id
  topic     = "Photos de ce vous voulez tant qu'elles sont respectieuses."
}

resource "discord_category_channel" "Gaming" {
  server_id = var.guild_id
  name      = "Gaming"
}

resource "discord_text_channel" "league" {
  server_id = var.guild_id
  name      = "⚔️-league"
  category  = discord_category_channel.Gaming.id
  topic     = "Discussion autour de League Of Legend / Organisation de session de jeu"
}

resource "discord_text_channel" "valorant" {
  server_id = var.guild_id
  name      = "🔫-valorant"
  category  = discord_category_channel.Gaming.id
  topic     = "Discussion autour de League Of Legend / Organisation de session de jeu"
}