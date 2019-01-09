data "aws_lex_bot" "schedule_appointment_bot" {
  name    = "${aws_lex_bot.schedule_appointment_bot.name}"
  version = "${aws_lex_bot.schedule_appointment_bot.version}"
}

data "aws_lex_bot_alias" "schedule_appointment_dev_bot_alias" {
  bot_name = "${aws_lex_bot_alias.schedule_appointment_dev_bot_alias.bot_name}"
  name     = "${aws_lex_bot_alias.schedule_appointment_dev_bot_alias.name}"
}

data "aws_lex_intent" "make_appointment_intent" {
  name    = "${aws_lex_intent.make_appointment_intent.name}"
  version = "${aws_lex_intent.make_appointment_intent.version}"
}

data "aws_lex_slot_type" "appointment_types" {
  name    = "${aws_lex_slot_type.appointment_types.name}"
  version = "${aws_lex_slot_type.appointment_types.version}"
}
