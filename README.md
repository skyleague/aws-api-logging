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

## Support

SkyLeague provides Enterprise Support on this open-source library package at clients across industries. Please get in touch via [`https://skyleague.io`](https://skyleague.io).

If you are not under Enterprise Support, feel free to raise an issue and we'll take a look at it on a best-effort basis!

## License & Copyright

This library is licensed under the MIT License (see [LICENSE.md](./LICENSE.md) for details).

If you using this SDK without Enterprise Support, please note this (partial) MIT license clause:

> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND

Copyright (c) 2022, SkyLeague Technologies B.V..
'SkyLeague' and the astronaut logo are trademarks of SkyLeague Technologies, registered at Chamber of Commerce in The Netherlands under number 86650564.

All product names, logos, brands, trademarks and registered trademarks are property of their respective owners. All company, product and service names used in this website are for identification purposes only. Use of these names, trademarks and brands does not imply endorsement.
