# Discord Infrastructure – OpenTofu

Manage your Discord server infrastructure using OpenTofu and Docker.

## 1. Get your Discord Bot Token

1. Go to the [Discord Developer Portal](https://discord.com/developers/applications).
2. Create or select your application.
3. Open **Bot** and create your bot.
4. Click **Reset Token** and copy the token.
5. Under **OAuth2 → URL Generator**, select the `bot` scope.
6. Grant these minimum permissions:
   - Manage Channels
   - Manage Roles
   - View Channels

Invite the bot to your Discord server using the generated URL.

**Important:** The bot's role must be above the roles it needs to manage.

## 2. Get your Guild ID

1. Open Discord settings → Advanced.
2. Enable **Developer Mode**.
3. Right-click your server icon.
4. Select **Copy Server ID**.

## 3. Configure environment

From the `tofu/` directory:

```bash
cp .env.example .env
```

Edit `.env`:

```dotenv
DISCORD_TOKEN=your_discord_bot_token
GUILD_ID=your_discord_server_id
```

Never commit `.env` to Git.

## 4. Initialize OpenTofu with Docker

From the `container/` directory:

```bash
docker compose build
docker compose run --rm opentofu init
```

## 5. Run OpenTofu manually (no CI/CD)

Format and validate:

```bash
docker compose run --rm opentofu fmt
docker compose run --rm opentofu validate
```

Preview infrastructure changes:

```bash
docker compose run --rm opentofu plan
```

Apply changes:

```bash
docker compose run --rm opentofu apply
```

Review the proposed changes and type `yes` to confirm.

Destroy managed resources:

```bash
docker compose run --rm opentofu destroy
```

**Note:** OpenTofu state is stored in the project directory. Keep state files private and backed up. Never commit them to Git.

