data "aws_lex_bot" "order_flowers" {
  name    = aws_lex_bot.order_flowers.name
  version = aws_lex_bot.order_flowers.version
}

data "aws_lex_bot_alias" "order_flowers_dev" {
  bot_name = aws_lex_bot_alias.order_flowers_dev.bot_name
  name     = aws_lex_bot_alias.order_flowers_dev.name
}

data "aws_lex_intent" "order_flowers" {
  name    = aws_lex_intent.order_flowers.name
  version = aws_lex_intent.order_flowers.version
}

data "aws_lex_slot_type" "flower_types" {
  name    = aws_lex_slot_type.flower_types.name
  version = aws_lex_slot_type.flower_types.version
}
