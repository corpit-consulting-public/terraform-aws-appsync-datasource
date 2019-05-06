resource "aws_appsync_datasource" "example_1" {
  count            = "${var.type == "NONE" ? 1 : 0}"
  api_id           = "${var.api_id}"
  name             = "tf_appsync_example"
  service_role_arn = "${var.service_role_arn}"
  type             = "${var.type}"
}

resource "aws_appsync_datasource" "example_2" {
  count            = "${var.type == "AMAZON_DYNAMODB" ? 1 : 0}"
  api_id           = "${var.api_id}"
  name             = "tf_appsync_example"
  service_role_arn = "${var.service_role_arn}"
  type             = "${var.type}"
  table_name       = "${var.table_name}"
}

resource "aws_appsync_datasource" "example_3" {
  count            = "${var.type == "AWS_LAMBDA" ? 1 : 0}"
  api_id           = "${var.api_id}"
  name             = "tf_appsync_example"
  service_role_arn = "${var.service_role_arn}"
  type             = "${var.type}"
  function_arn     = "${var.function_arn}"
}

resource "aws_appsync_datasource" "example_4" {
  count            = "${var.type == "AMAZON_ELASTICSEARCH" ? 1 : 0}"
  api_id           = "${var.api_id}"
  name             = "tf_appsync_example"
  service_role_arn = "${var.service_role_arn}"
  type             = "${var.type}"
  endpoint         = "${var.elasticsearch_endpoint}"
}

resource "aws_appsync_datasource" "example_5" {
  count            = "${var.type == "HTTP" ? 1 : 0}"
  api_id           = "${var.api_id}"
  name             = "tf_appsync_example"
  service_role_arn = "${var.service_role_arn}"
  type             = "${var.type}"
  endpoint         = "${var.http_endpoint}"
}
