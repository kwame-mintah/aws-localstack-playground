## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.43.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.43.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_s3_bucket.terraform_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_object.ls_bucket_object](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |
| [aws_s3_object.tf_bucket_object](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_object) | resource |
| [aws_sqs_queue.terraform_queue](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue) | resource |
| [aws_s3_bucket.localstack_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/s3_bucket) | data source |
| [aws_s3_object.localstack_object_info](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/s3_object) | data source |
| [aws_s3_objects.localstack_objects](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/s3_objects) | data source |
| [aws_sqs_queue.localstack_queue](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/sqs_queue) | data source |

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_localstack_resource_bucket"></a> [localstack\_resource\_bucket](#output\_localstack\_resource\_bucket) | The S3 bucket previously created via by `localstack-resources-setup` docker<br>container. |
| <a name="output_localstack_resource_bucket_objects"></a> [localstack\_resource\_bucket\_objects](#output\_localstack\_resource\_bucket\_objects) | The objects within the S3 bucket created via by `localstack-resources-setup`<br>docker container. |
| <a name="output_localstack_resource_queue"></a> [localstack\_resource\_queue](#output\_localstack\_resource\_queue) | The SQS previously created via by `localstack-resources-setup` docker<br>container. |
| <a name="output_terraform_bucket"></a> [terraform\_bucket](#output\_terraform\_bucket) | The S3 bucket created via Terraform. |
| <a name="output_terraform_queue"></a> [terraform\_queue](#output\_terraform\_queue) | The SQS created via Terraform. |
