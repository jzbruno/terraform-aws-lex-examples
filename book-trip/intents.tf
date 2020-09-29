resource "aws_lex_intent" "book_car" {
  confirmation_prompt {
    max_attempts = 2

    message {
      content      = "Okay, I have you down for a {CarType} rental in {PickUpCity} from {PickUpDate} to {ReturnDate}.  Should I book the reservation?"
      content_type = "PlainText"
    }

    message {
      content      = "The price of this {CarType} rental in {PickUpCity} from {PickUpDate} to {ReturnDate} is [currentReservationPrice] dollars.  Shall I book the reservation?"
      content_type = "PlainText"
    }
  }

  description = "Intent to book a car on StayBooker"

  fulfillment_activity {
    type = "ReturnIntent"
  }

  name = "BookCar"

  rejection_statement {
    message {
      content      = "Okay, I have cancelled your reservation in progress."
      content_type = "PlainText"
    }
  }

  sample_utterances = [
    "Book a car",
    "Reserve a car",
    "Make a car reservation",
  ]

  slot {
    description = "City in which the car reservation is being made"
    name        = "PickUpCity"
    priority    = 1

    slot_constraint = "Required"
    slot_type       = "AMAZON.US_CITY"

    value_elicitation_prompt {
      max_attempts = 2

      message {
        content      = "In what city do you need to rent a car?"
        content_type = "PlainText"
      }
    }
  }

  slot {
    description     = "Date to start the rental"
    name            = "PickUpDate"
    priority        = 2
    slot_constraint = "Required"
    slot_type       = "AMAZON.DATE"

    value_elicitation_prompt {
      max_attempts = 2

      message {
        content      = "What day do you want to start your rental?"
        content_type = "PlainText"
      }
    }
  }

  slot {
    description     = "Date of return.  Should be required when the flight is not one way."
    name            = "ReturnDate"
    priority        = 3
    slot_constraint = "Required"
    slot_type       = "AMAZON.DATE"

    value_elicitation_prompt {
      max_attempts = 2

      message {
        content      = "What day do you want to return the car?"
        content_type = "PlainText"
      }
    }
  }

  slot {
    description     = "Age of the driver during the car rental."
    name            = "DriverAge"
    priority        = 4
    slot_constraint = "Required"
    slot_type       = "AMAZON.NUMBER"

    value_elicitation_prompt {
      max_attempts = 2

      message {
        content      = "How old is the driver for this rental?"
        content_type = "PlainText"
      }
    }
  }

  slot {
    description       = "Type of car being reserved."
    name              = "CarType"
    priority          = 5
    slot_constraint   = "Required"
    slot_type         = aws_lex_slot_type.car_types.name
    slot_type_version = aws_lex_slot_type.car_types.version

    value_elicitation_prompt {
      max_attempts = 2

      message {
        content      = "What type of car would you like to rent?  Our most popular options are economy, midsize, and luxury"
        content_type = "PlainText"
      }
    }
  }
}

resource "aws_lex_intent" "book_hotel" {
  confirmation_prompt {
    max_attempts = 2

    message {
      content      = "Okay, I have you down for a {Nights} night stay in {Location} starting {CheckInDate}.  Shall I book the reservation?"
      content_type = "PlainText"
    }

    message {
      content      = "The price of this {Nights} night stay in {Location} from {CheckInDate} is [currentReservationPrice] dollars.  Shall I book the reservation?"
      content_type = "PlainText"
    }
  }

  description = "Intent to book a hotel on StayBooker"

  fulfillment_activity {
    type = "ReturnIntent"
  }

  name = "BookHotel"

  rejection_statement {
    message {
      content      = "Okay, I have cancelled your reservation in progress."
      content_type = "PlainText"
    }
  }

  sample_utterances = [
    "Book a hotel",
    "I want a make hotel reservations",
    "Book a {Nights} night stay in {Location}",
  ]

  slot {
    description = "Location of the city in which the hotel is located"
    name        = "Location"
    priority    = 1

    slot_constraint = "Required"
    slot_type       = "AMAZON.US_CITY"

    value_elicitation_prompt {
      max_attempts = 2

      message {
        content      = "What city will you be staying in?"
        content_type = "PlainText"
      }
    }
  }

  slot {
    description     = "Date of check-in"
    name            = "CheckInDate"
    priority        = 2
    slot_constraint = "Required"
    slot_type       = "AMAZON.DATE"

    value_elicitation_prompt {
      max_attempts = 2

      message {
        content      = "What day do you want to check in?"
        content_type = "PlainText"
      }
    }
  }

  slot {
    description     = "Number of nights in the hotel stay."
    name            = "Nights"
    priority        = 3
    slot_constraint = "Required"
    slot_type       = "AMAZON.NUMBER"

    value_elicitation_prompt {
      max_attempts = 2

      message {
        content      = "How many nights will you be staying?"
        content_type = "PlainText"
      }
    }
  }

  slot {
    description       = "Enumeration of types of rooms that are offered by a hotel."
    name              = "RoomType"
    priority          = 4
    slot_constraint   = "Required"
    slot_type         = aws_lex_slot_type.room_types.name
    slot_type_version = aws_lex_slot_type.room_types.version

    value_elicitation_prompt {
      max_attempts = 2

      message {
        content      = "What type of room would you like, queen, king or deluxe?"
        content_type = "PlainText"
      }
    }
  }
}
