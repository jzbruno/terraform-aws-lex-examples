resource "aws_lex_bot" "schedule_appointment" {
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
  detect_sentiment            = false
  idle_session_ttl_in_seconds = 600

  intent {
    intent_name    = aws_lex_intent.make_appointment.name
    intent_version = aws_lex_intent.make_appointment.version
  }

  locale           = "en-US"
  name             = "ScheduleAppointment"
  process_behavior = "SAVE"
  voice_id         = "Salli"
}
