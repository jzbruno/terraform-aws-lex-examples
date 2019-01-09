data "aws_lex_bot" "book_trip_bot" {
  name    = "${aws_lex_bot.book_trip_bot.name}"
  version = "${aws_lex_bot.book_trip_bot.version}"
}

data "aws_lex_bot_alias" "book_trip_dev_bot_alias" {
  bot_name = "${aws_lex_bot_alias.book_trip_dev_bot_alias.bot_name}"
  name     = "${aws_lex_bot_alias.book_trip_dev_bot_alias.name}"
}

data "aws_lex_intent" "book_car_intent" {
  name    = "${aws_lex_intent.book_car_intent.name}"
  version = "${aws_lex_intent.book_car_intent.version}"
}

data "aws_lex_intent" "book_hotel_intent" {
  name    = "${aws_lex_intent.book_hotel_intent.name}"
  version = "${aws_lex_intent.book_hotel_intent.version}"
}

data "aws_lex_slot_type" "car_types" {
  name    = "${aws_lex_slot_type.car_types.name}"
  version = "${aws_lex_slot_type.car_types.version}"
}

data "aws_lex_slot_type" "room_types" {
  name    = "${aws_lex_slot_type.room_types.name}"
  version = "${aws_lex_slot_type.car_types.version}"
}
