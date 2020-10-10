# terraform-aws-lex-examples

This repo contains Terraform config for deploying the example Amazon Lex Bots.

* BookTrip
* OrderFlowers
* ScheduleAppointment

## Requirements

* Terraform 0.12.x
* Terraform AWS Provider 3.10.0+

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
    terraform init
    ```

5. Apply the config.

    ```sh
    terraform apply
    ```
