# terraform-aws-lex-examples

This repo contains Terraform config for deploying the example Amazon Lex Bots.

* BookTrip
* OrderFlowers
* ScheduleAppointment

These were used when developing the aws_lex_* resources for the AWS Terraform Provider.

* [aws_lex_bot](https://www.terraform.io/docs/providers/aws/r/lex_bot.html)
* [aws_lex_intent](https://www.terraform.io/docs/providers/aws/r/lex_intent.html)
* [aws_lex_slot_type](https://www.terraform.io/docs/providers/aws/r/lex_slot_type.html)

## Usage

**Unitl the [aws_lex_resources](https://github.com/terraform-providers/terraform-provider-aws/pull/2616) pull request is merged and released, the provider must be built and [installed](https://www.terraform.io/docs/plugins/basics.html#installing-a-plugin).**

1. Choose an example.

    ```
    cd book-trip
    ```

2. Init Terraform.

    ```
    terraform init
    ```

3. Apply the config.

    ```
    terraform apply
    ```
