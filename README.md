
# tf-aws-appsync-datasource

Terraform module that creates AppSync-DataSource resources in AWS, of the following types:

* AWS-LAMBDA
* Amazon-DynamoDB
* Amazon-Elasticsearch
* HTTP
* None

  _Important!_
    _The following modules are required for the operation of AppSync Data sourece:_
  * _Appsync GraphQL Module_
  * _DynamoDB module if type is Amazon-DynamoDB_
  * _Lambda Function Module if the type is Aws-Lambda_


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
## README.md
This README file was created runnnign generate-readme.sh placed insinde hooks directory.
If you want to update README.md file, run that script while being in 'hooks' folder.
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| api\_id | The API ID of the GraphQL API for the DataSource | string | n/a | yes |
| description | A description of the DataSource | string | `""` | no |
| dynamo\_config | DynamoDB settings | string | `""` | no |
| elasticsearch\_config | AMAZON Elasticsearch settings | string | `""` | no |
| elasticsearch\_endpoint | HTTP endpoint of the Elasticsearch domain | string | `""` | no |
| function\_arn | The ARN for the Lambda function | string | `""` | no |
| http\_config | HTTP settings | string | `""` | no |
| http\_endpoint | HTTP URL | string | `""` | no |
| lambda\_config | AWS Lambda settings | string | `""` | no |
| name | A user supplied name for the DataSource | string | n/a | yes |
| region | AWS region of the DynamoDB table. Default to corrent region | string | `""` | no |
| service\_role\_arn | The IAM service role ARN for the DataSource | string | `""` | no |
| table\_name | Name of the DynamoDB table | string | `""` | no |
| type | The type of the DataSource. Valid valued: AWS_LAMBDA, AMAZON_DYNAMODB, AMAZON_ELASTICSEARCH, HTTP, NONE | string | n/a | yes |
| use\_caller\_credentials | Set to true to use Amazon Cognito credentials with this Data source | string | `"false"` | no |

## Outputs

| Name | Description |
|------|-------------|
| name |  |

