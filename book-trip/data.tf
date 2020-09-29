data "aws_lex_bot" "book_trip" {
  name    = aws_lex_bot.book_trip.name
  version = aws_lex_bot.book_trip.version
}

data "aws_lex_bot_alias" "book_trip_dev" {
  bot_name = aws_lex_bot_alias.book_trip_dev.bot_name
  name     = aws_lex_bot_alias.book_trip_dev.name
}

data "aws_lex_intent" "book_car" {
  name    = aws_lex_intent.book_car.name
  version = aws_lex_intent.book_car.version
}

data "aws_lex_intent" "book_hotel" {
  name    = aws_lex_intent.book_hotel.name
  version = aws_lex_intent.book_hotel.version
}

data "aws_lex_slot_type" "car_types" {
  name    = aws_lex_slot_type.car_types.name
  version = aws_lex_slot_type.car_types.version
}

data "aws_lex_slot_type" "room_types" {
  name    = aws_lex_slot_type.room_types.name
  version = aws_lex_slot_type.car_types.version
}
