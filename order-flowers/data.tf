data "aws_lex_bot" "order_flowers_bot" {
  name    = "${aws_lex_bot.order_flowers_bot.name}"
  version = "${aws_lex_bot.order_flowers_bot.version}"
}

data "aws_lex_bot_alias" "order_flowers_dev_bot_alias" {
  bot_name = "${aws_lex_bot_alias.order_flowers_dev_bot_alias.bot_name}"
  name     = "${aws_lex_bot_alias.order_flowers_dev_bot_alias.name}"
}

data "aws_lex_intent" "order_flowers_intent" {
  name    = "${aws_lex_intent.order_flowers_intent.name}"
  version = "${aws_lex_intent.order_flowers_intent.version}"
}

data "aws_lex_slot_type" "flower_types" {
  name    = "${aws_lex_slot_type.flower_types.name}"
  version = "${aws_lex_slot_type.flower_types.version}"
}
