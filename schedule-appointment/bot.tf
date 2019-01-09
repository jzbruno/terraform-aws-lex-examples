resource "aws_lex_bot" "schedule_appointment_bot" {
  abort_statement {
    message {
      content_type = "PlainText"
      content      = "Sorry, I am not able to assist at this time"
    }
  }

  child_directed = false

  clarification_prompt {
    max_attempts = 2

    message {
      content_type = "PlainText"
      content      = "I didn't understand you, what would you like me to do?"
    }
  }

  description                 = "Bot to book a dentist appointment"
  idle_session_ttl_in_seconds = 600

  intent {
    intent_name    = "${aws_lex_intent.make_appointment_intent.name}"
    intent_version = "${aws_lex_intent.make_appointment_intent.version}"
  }

  locale           = "en-US"
  name             = "ScheduleAppointment"
  process_behavior = "BUILD"
  voice_id         = "Salli"
}

resource "aws_lex_bot_alias" "schedule_appointment_dev_bot_alias" {
  bot_name    = "${aws_lex_bot.schedule_appointment_bot.name}"
  bot_version = "${aws_lex_bot.schedule_appointment_bot.version}"
  description = "Development version of bot to book a dentist appointment"
  name        = "ScheduleAppointmentDev"
}
