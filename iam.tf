resource "aws_iam_role" "aws_service_role_for_lex_bots" {
  assume_role_policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":{\"Service\":\"lex.amazonaws.com\"},\"Action\":\"sts:AssumeRole\"}]}"
  name               = "AWSServiceRoleForLexBots"
  path               = "/aws-service-role/lex.amazonaws.com/"
}
