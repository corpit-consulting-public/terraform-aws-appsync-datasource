output "name" {
  value = "${element(coalescelist(aws_appsync_datasource.example_1.*.name,aws_appsync_datasource.example_2.*.name,aws_appsync_datasource.example_3.*.name,aws_appsync_datasource.example_4.*.name,aws_appsync_datasource.example_5.*.name),0)}"
}
