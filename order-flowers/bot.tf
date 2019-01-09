resource "aws_lex_bot" "order_flowers_bot" {
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

  description                 = "Bot to order flowers on the behalf of a user"
  idle_session_ttl_in_seconds = 600

  intent {
    intent_name    = "${aws_lex_intent.order_flowers_intent.name}"
    intent_version = "${aws_lex_intent.order_flowers_intent.version}"
  }

  locale           = "en-US"
  name             = "OrderFlowers"
  process_behavior = "BUILD"
  voice_id         = "Salli"
}

resource "aws_lex_bot_alias" "order_flowers_dev_bot_alias" {
  bot_name    = "${aws_lex_bot.order_flowers_bot.name}"
  bot_version = "${aws_lex_bot.order_flowers_bot.version}"
  description = "Development version of bot to order flowers on the behalf of a user"
  name        = "OrderFlowersDev"
}
