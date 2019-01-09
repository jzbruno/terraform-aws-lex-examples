resource "aws_lex_bot" "book_trip_bot" {
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
      content      = "Sorry, what can I help you with?"
    }
  }

  description                 = "Bot to make reservations necessary for a visit to a city"
  idle_session_ttl_in_seconds = 600

  intent {
    intent_name    = "${aws_lex_intent.book_car_intent.name}"
    intent_version = "${aws_lex_intent.book_car_intent.version}"
  }

  intent {
    intent_name    = "${aws_lex_intent.book_hotel_intent.name}"
    intent_version = "${aws_lex_intent.book_hotel_intent.version}"
  }

  locale           = "en-US"
  name             = "BookTrip"
  process_behavior = "BUILD"
  voice_id         = "Salli"
}

resource "aws_lex_bot_alias" "book_trip_dev_bot_alias" {
  bot_name    = "${aws_lex_bot.book_trip_bot.name}"
  bot_version = "${aws_lex_bot.book_trip_bot.version}"
  description = "Development version of bot to make reservations necessary for a visit to a city"
  name        = "BookTripDev"
}
