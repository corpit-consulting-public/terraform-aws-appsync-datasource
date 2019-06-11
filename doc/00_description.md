# tf-aws-appsync-datasource

Terraform module that creates AppSync-DataSource resources in AWS, of the following types:

* AWS-LAMBDA
* Amazon-DynamoDB
* Amazon-Elasticsearch
* HTTP
* None

  _Important!
    The following modules are required for the operation of AppSync Data sourece:
  * Appsync GraphQL Module
  * DynamoDB module if type is Amazon-DynamoDB
  * Lambda Function Module if the type is Aws-Lambda_


