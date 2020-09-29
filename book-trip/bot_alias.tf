resource "aws_lex_bot_alias" "book_trip_dev" {
  bot_name    = aws_lex_bot.book_trip.name
  bot_version = aws_lex_bot.book_trip.version
  description = "Development version of bot to make reservations necessary for a visit to a city"
  name        = "BookTripDev"
}
