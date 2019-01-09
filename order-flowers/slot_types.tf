resource "aws_lex_slot_type" "flower_types" {
  description = "Types of flowers to pick up"

  enumeration_value {
    value = "lilies"
  }

  enumeration_value {
    value = "tulips"
  }

  enumeration_value {
    value = "roses"
  }

  name                     = "FlowerTypes"
  value_selection_strategy = "ORIGINAL_VALUE"
}
