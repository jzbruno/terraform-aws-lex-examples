resource "aws_lex_bot" "order_flowers" {
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
      content      = "I didn't understand you, what would you like to do?"
    }
  }

  detect_sentiment            = false
  idle_session_ttl_in_seconds = 600

  intent {
    intent_name    = aws_lex_intent.order_flowers.name
    intent_version = "1"
  }

  locale   = "en-US"
  name     = "OrderFlowers"
  voice_id = "Salli"
}
