resource "aws_lex_bot_alias" "schedule_appointment_dev" {
  bot_name    = aws_lex_bot.schedule_appointment.name
  bot_version = aws_lex_bot.schedule_appointment.version
  description = "Development version of bot to book a dentist appointment"
  name        = "ScheduleAppointmentDev"
}
