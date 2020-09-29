resource "aws_lex_intent" "make_appointment" {
  confirmation_prompt {
    max_attempts = 2

    message {
      content      = "{Time} is available, should I go ahead and book your appointment?"
      content_type = "PlainText"
    }

    message {
      content      = "[formattedTime] is available, should I go ahead and book your {AppointmentType}?"
      content_type = "PlainText"
    }
  }

  description = "Intent to book a dentist's appointment"

  fulfillment_activity {
    type = "ReturnIntent"
  }

  name = "MakeAppointment"

  rejection_statement {
    message {
      content      = "Okay, I will not schedule an appointment."
      content_type = "PlainText"
    }
  }

  sample_utterances = [
    "I would like to book an appointment",
    "Book an appointment",
    "Book a {AppointmentType}",
  ]

  slot {
    description = "The type of appointment being scheduled"
    name        = "AppointmentType"
    priority    = 1

    sample_utterances = [
      "I would like a {AppointmentType}",
    ]

    slot_constraint   = "Required"
    slot_type         = aws_lex_slot_type.appointment_types.name
    slot_type_version = aws_lex_slot_type.appointment_types.version

    value_elicitation_prompt {
      max_attempts = 2

      message {
        content      = "What type of appointment would you like to schedule?"
        content_type = "PlainText"
      }
    }
  }

  slot {
    description     = "The date to schedule the appointment"
    name            = "Date"
    priority        = 2
    slot_constraint = "Required"
    slot_type       = "AMAZON.DATE"

    value_elicitation_prompt {
      max_attempts = 2

      message {
        content      = "When should I schedule your appointment?"
        content_type = "PlainText"
      }

      message {
        content      = "When should I schedule your {AppointmentType}?"
        content_type = "PlainText"
      }

      message {
        content      = "{Time} on what day?"
        content_type = "PlainText"
      }

      message {
        content      = "A {AppointmentType} will take about [ExpectedDuration] minutes. What day works best for you?"
        content_type = "PlainText"
      }
    }
  }

  slot {
    description     = "The time to schedule the appointment"
    name            = "Time"
    priority        = 3
    slot_constraint = "Required"
    slot_type       = "AMAZON.TIME"

    value_elicitation_prompt {
      max_attempts = 2

      message {
        content      = "At what time should I schedule your appointment?"
        content_type = "PlainText"
      }

      message {
        content      = "At what time do you want to schedule the {AppointmentType}?"
        content_type = "PlainText"
      }

      message {
        content      = "At what time on {Date}?"
        content_type = "PlainText"
      }
    }
  }
}
