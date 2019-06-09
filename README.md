# terraform-aws-lex-examples

This repo contains Terraform config for deploying the example Amazon Lex Bots.

* BookTrip
* OrderFlowers
* ScheduleAppointment

These were used when developing the aws_lex_* resources for the AWS Terraform Provider.

* [aws_lex_bot](https://www.terraform.io/docs/providers/aws/r/lex_bot.html)
* [aws_lex_intent](https://www.terraform.io/docs/providers/aws/r/lex_intent.html)
* [aws_lex_slot_type](https://www.terraform.io/docs/providers/aws/r/lex_slot_type.html)

## Build Provider

**Unitl the [aws_lex_resources #2616](https://github.com/terraform-providers/terraform-provider-aws/pull/2616) pull request is merged and released, the provider must be [built](https://github.com/terraform-providers/terraform-provider-aws#developing-the-provider) and [installed](https://www.terraform.io/docs/plugins/basics.html#installing-a-plugin).**

1. Clone provider repo

    ```
    cd $GOPATH/src/github.com/terraform-providers
    git clone git@github.com:terraform-providers/terraform-provider-aws.git
    ```

2. Build

    ```
    cd $GOPATH/src/github.com/terraform-providers/terraform-provider-aws
    git checkout add_aws_lex_resources
    export GO111MODULE=on
    make tools
    make build
    ```

## Examples

1. Clone examples repo

    ```
    mkdir -p $GOPATH/src/github.com/jzbruno
    cd $GOPATH/src/github.com/jzbruno
    git clone git@github.com:jzbruno/terraform-aws-lex-examples.git
    ```

2. Choose an example.

    ```
    cd terraform-aws-lex-examples
    cd book-trip
    ```

3. Update `_provider.tf` with your AWS account configuration.

4. Init Terraform.

    ```
    ln -s $GOPATH/bin/terraform-provider-aws terraform-provider-aws
    terraform init
    ```

5. Apply the config.

    ```
    terraform apply
    ```
