resource "aws_lex_slot_type" "appointment_types" {
  description = "Type of dentist appointment to schedule"

  enumeration_value {
    value = "cleaning"
  }

  enumeration_value {
    value = "root canal"
  }

  enumeration_value {
    value = "whitening"
  }

  name                     = "AppointmentTypeValue"
  value_selection_strategy = "ORIGINAL_VALUE"
}
