resource "aws_appsync_datasource" "datasource" {
  api_id           = var.api_id
  name             = var.name
  service_role_arn = var.service_role_arn
  type             = var.type


  dynamic "dynamodb_config" {
      for_each = var.dynamo_config

      content {
        table_name = var.type == "AMAZON_DYNAMODB" ? var.table_name : null
      }
  }

  dynamic "lambda_config" {
      for_each = var.lambda_config

      content {
        function_arn = var.type == "AWS_LAMBDA" ? var.function_arn : null
      }
  }

  dynamic "elasticsearch_config" {
      for_each = var.elasticsearch_config

      content {
        endpoint = var.type == "AMAZON_ELASTICSEARCH" ? var.endpoint : null
      }
  }
  dynamic "http_config" {
      for_each = var.dynamo_config

      content {
        endpoint = var.type == "HTTP" ? var.endpoint : null
      }
  }
}
