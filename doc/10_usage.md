## Usage

```hcl

############################
#######With Type NONE#######

module "datasource" {
  source           = "./modules/tf-aws-appsync-datasource"
  type             = "${var.type}"
  api_id           = "${module.graphql-api.id}"
  name             = "${var.name}"
  service_role_arn = "${aws_iam_role.appsync_datasource_role.arn}"
}

#######################################
#######With Type AMAZON_DYNAMODB#######

module "datasource-dynamodb" {
  source           = "./modules/tf-aws-appsync-datasource"
  name             = "${var.name}"
  type             = "${var.type}"
  api_id           = "${module.graphql-api.id}"
  service_role_arn = "${aws_iam_role.appsync_datasource_role.arn}"
  table_name       = "${module.dynamodb.table_name.id}"
}

##################################
#######With Type AWS_LAMBDA#######

module "datasource-lambda" {
  source           = "./modules/tf-aws-appsync-datasource"
  name             = "${var.name}"
  type             = "${var.type}"
  api_id           = "${module.graphql-api.id}"
  service_role_arn = "${var.service_role_arn}"
  function_arn     = "${var.function_arn}"
}
############################################
#######With Type AMAZON_ELASTICSEARCH#######

module "datasource-elasticsearch" {
  source                 = "./modules/tf-aws-appsync-datasource"
  api_id                 = "${module.graphql-api.id}"
  name                   = "${var.name}"
  service_role_arn       = "${aws_iam_role.appsync_datasource_role.arn}"
  type                   = "${var.type}"
  elasticsearch_endpoint = "${var.elasticsearch_endpoint}"
}

############################
#######With Type HTTP#######

module "datasource-http" {
  source           = "./modules/tf-aws-appsync-datasource"
  name             = "${var.datasource_params-05["name"]}"
  type             = "${var.datasource_params-05["type"]}"
  api_id           = "${module.graphql-api-CircularAppSync.id}"
  service_role_arn = "${aws_iam_role.appsync_datasource_role.arn}"
  http_endpoint    = "${var.http_endpoint}"
}
```
