resource "aws_lex_intent" "order_flowers" {
  confirmation_prompt {
    max_attempts = 2

    message {
      content      = "Okay, your {FlowerType} will be ready for pickup by {PickupTime} on {PickupDate}.  Does this sound okay?"
      content_type = "PlainText"
    }

    message {
      content      = "Okay, your {FlowerType} will be ready for pickup by {PickupTime} on {PickupDate}, and will cost [Price] dollars.  Does this sound okay?"
      content_type = "PlainText"
    }
  }

  description = "Intent to order a bouquet of flowers for pick up"

  fulfillment_activity {
    type = "ReturnIntent"
  }

  name = "OrderFlowers"

  rejection_statement {
    message {
      content      = "Okay, I will not place your order."
      content_type = "PlainText"
    }
  }

  sample_utterances = [
    "I would like to pick up flowers",
    "I would like to order some flowers",
  ]

  slot {
    description = "The type of flowers to pick up"
    name        = "FlowerType"
    priority    = 1

    sample_utterances = [
      "I would like to order {FlowerType}",
    ]

    slot_constraint   = "Required"
    slot_type         = aws_lex_slot_type.flower_types.name
    slot_type_version = aws_lex_slot_type.flower_types.version

    value_elicitation_prompt {
      max_attempts = 2

      message {
        content      = "What type of flowers would you like to order?"
        content_type = "PlainText"
      }
    }
  }

  slot {
    description     = "The date to pick up the flowers"
    name            = "PickupDate"
    priority        = 2
    slot_constraint = "Required"
    slot_type       = "AMAZON.DATE"

    value_elicitation_prompt {
      max_attempts = 2

      message {
        content      = "What day do you want the {FlowerType} to be picked up?"
        content_type = "PlainText"
      }

      message {
        content      = "Pick up the {FlowerType} at {PickupTime} on what day?"
        content_type = "PlainText"
      }
    }
  }

  slot {
    description     = "The time to pick up the flowers"
    name            = "PickupTime"
    priority        = 3
    slot_constraint = "Required"
    slot_type       = "AMAZON.TIME"

    value_elicitation_prompt {
      max_attempts = 2

      message {
        content      = "At what time do you want the {FlowerType} to be picked up?"
        content_type = "PlainText"
      }

      message {
        content      = "Pick up the {FlowerType} at what time on {PickupDate}?"
        content_type = "PlainText"
      }
    }
  }
}
