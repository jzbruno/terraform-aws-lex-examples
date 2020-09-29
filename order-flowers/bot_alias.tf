resource "aws_lex_bot_alias" "order_flowers_dev" {
  bot_name    = aws_lex_bot.order_flowers.name
  bot_version = aws_lex_bot.order_flowers.version
  description = "Development version of bot to order flowers on the behalf of a user"
  name        = "OrderFlowersDev"
}
