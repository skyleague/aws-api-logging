data "aws_iam_policy_document" "assume_role" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]
    principals {
      type        = "Service"
      identifiers = ["apigateway.amazonaws.com"]
    }
  }
}

resource "aws_iam_role" "this" {
  name        = var.name
  name_prefix = var.name_prefix

  assume_role_policy = data.aws_iam_policy_document.assume_role.json

  lifecycle {
    precondition {
      condition     = var.name == null || var.name_prefix == null
      error_message = "Either \"name\" or \"name_prefix\" must be provided, not both"
    }
  }
}

resource "aws_iam_role_policy_attachment" "logging" {
  role       = aws_iam_role.this.id
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonAPIGatewayPushToCloudWatchLogs"
}

resource "aws_api_gateway_account" "this" {
  cloudwatch_role_arn = aws_iam_role.this.arn
}
