resource "aws_lex_bot" "book_trip" {
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
  detect_sentiment            = false
  idle_session_ttl_in_seconds = 600

  intent {
    intent_name    = aws_lex_intent.book_car.name
    intent_version = aws_lex_intent.book_car.version
  }

  intent {
    intent_name    = aws_lex_intent.book_hotel.name
    intent_version = aws_lex_intent.book_hotel.version
  }

  locale           = "en-US"
  name             = "BookTrip"
  process_behavior = "SAVE"
  voice_id         = "Salli"
}
