# SkyLeague `aws-api-logging`

[![tfsec](https://github.com/skyleague/aws-api-logging/actions/workflows/tfsec.yml/badge.svg?branch=main)](https://github.com/skyleague/aws-api-logging/actions/workflows/tfsec.yml)

This module creates an account-level role for API Gateway to assume in order to put logs in Cloudwatch. This module only needs to be used once per account (in contrast to once per project/microservice), so it can be used in either the bootstrapping of the AWS account, or in the core-infra deployment of the AWS account.

## Usage

```terraform
module "api_logging" {
  source = "git@github.com:skyleague/aws-api-logging.git?ref=v1.0.0"
}
```

## Options

For a complete reference of all variables, have a look at the descriptions in [`variables.tf`](./variables.tf).
