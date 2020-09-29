data "aws_lex_bot" "schedule_appointment" {
  name    = aws_lex_bot.schedule_appointment.name
  version = aws_lex_bot.schedule_appointment.version
}

data "aws_lex_bot_alias" "schedule_appointment_dev" {
  bot_name = aws_lex_bot_alias.schedule_appointment_dev.bot_name
  name     = aws_lex_bot_alias.schedule_appointment_dev.name
}

data "aws_lex_intent" "make_appointment" {
  name    = aws_lex_intent.make_appointment.name
  version = aws_lex_intent.make_appointment.version
}

data "aws_lex_slot_type" "appointment_types" {
  name    = aws_lex_slot_type.appointment_types.name
  version = aws_lex_slot_type.appointment_types.version
}
