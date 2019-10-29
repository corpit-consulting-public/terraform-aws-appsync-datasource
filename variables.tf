##Variables for AppSync Data Source


variable "api_id" {
  type        = string
  description = "The API ID of the GraphQL API for the DataSource"
}

variable "name" {
  type        = string
  description = "A user supplied name for the DataSource"
}

variable "type" {
  type        = string
  description = "The type of the DataSource. Valid valued: AWS_LAMBDA, AMAZON_DYNAMODB, AMAZON_ELASTICSEARCH, HTTP, NONE"
}

variable "description" {
  type        = string
  description = "A description of the DataSource"
  default     = ""
}

variable "service_role_arn" {
  type        = string
  description = "The IAM service role ARN for the DataSource"
  default     = ""
}

variable "dynamo_config" {
  type        = string
  description = "DynamoDB settings"
  default     = ""
}

variable "elasticsearch_config" {
  type        = string
  description = "AMAZON Elasticsearch settings"
  default     = ""
}

variable "http_config" {
  type        = string
  description = "HTTP settings"
  default     = ""
}

variable "lambda_config" {
  type        = string
  description = "AWS Lambda settings"
  default     = ""
}

##Variables for DynamoDB_config

variable "table_name" {
  type        = string
  description = "Name of the DynamoDB table"
  default     = ""
}

variable "region" {
  type        = string
  description = "AWS region of the DynamoDB table. Default to corrent region"
  default     = ""
}

variable "use_caller_credentials" {
  type        = string
  description = "Set to true to use Amazon Cognito credentials with this Data source"
  default     = "false"
}

##Variables for Elasticsearch_config

variable "elasticsearch_endpoint" {
  type        = string
  description = "HTTP endpoint of the Elasticsearch domain"
  default     = ""
}

##Variables for Http_config

variable "http_endpoint" {
  type        = string
  description = "HTTP URL"
  default     = ""
}

##Variable for Lambda_config

variable "function_arn" {
  type        = string
  description = "The ARN for the Lambda function"
  default     = ""
}

