# terraform-aws-lex-examples

This repo contains Terraform config for deploying the example Amazon Lex Bots.

* BookTrip
* OrderFlowers
* ScheduleAppointment

## Requirements

* Terraform 0.12.x
* Go 1.14.7 (earliest tested may work on other versions)

## Build Provider

**Until all the Lex PRs are merged and released this procedure can be used to build a working version of the AWS provider with Lex support.**

PRs:

* [aws_lex_slot_type](https://github.com/terraform-providers/terraform-provider-aws/pull/8916)
* [aws_lex_intent](https://github.com/terraform-providers/terraform-provider-aws/pull/8917)
* [aws_lex_bot](https://github.com/terraform-providers/terraform-provider-aws/pull/8918)
* [aws_lex_bot_alias](https://github.com/terraform-providers/terraform-provider-aws/pull/8919)

Procedure:

1. Clone provider repo

    ```sh
    mkdir -p $GOPATH/src/github.com/terraform-providers
    cd $GOPATH/src/github.com/terraform-providers
    git clone git@github.com:terraform-providers/terraform-provider-aws.git
    git checkout add_aws_lex_bot_alias
    ```

2. Build

    ```sh
    cd $GOPATH/src/github.com/terraform-providers/terraform-provider-aws
    make tools
    make build
    ```

## Examples

1. Clone examples repo

    ```sh
    mkdir -p $GOPATH/src/github.com/jzbruno
    cd $GOPATH/src/github.com/jzbruno
    git clone git@github.com:jzbruno/terraform-aws-lex-examples.git
    ```

2. Choose an example.

    ```sh
    cd terraform-aws-lex-examples
    cd book-trip
    ```

3. Update `_provider.tf` with your AWS account configuration.

4. Init Terraform.

    ```sh
    ln -s $GOPATH/bin/terraform-provider-aws terraform-provider-aws
    terraform init
    ```

5. Apply the config.

    ```sh
    terraform apply
    ```
