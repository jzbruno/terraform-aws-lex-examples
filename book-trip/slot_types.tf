resource "aws_lex_slot_type" "car_types" {
  description = "Enumeration representing possible types of cars available for rental"

  enumeration_value {
    value = "standard"
  }

  enumeration_value {
    value = "full size"
  }

  enumeration_value {
    value = "midsize"
  }

  enumeration_value {
    value = "luxury"
  }

  enumeration_value {
    value = "economy"
  }

  enumeration_value {
    value = "minivan"
  }

  name                     = "CarTypeValues"
  value_selection_strategy = "ORIGINAL_VALUE"
}

resource "aws_lex_slot_type" "room_types" {
  description = "Enumeration representing possible types of a hotel room"

  enumeration_value {
    value = "deluxe"
  }

  enumeration_value {
    value = "queen"
  }

  enumeration_value {
    value = "king"
  }

  name                     = "RoomTypeValues"
  value_selection_strategy = "ORIGINAL_VALUE"
}
