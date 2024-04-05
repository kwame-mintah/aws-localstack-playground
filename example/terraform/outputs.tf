output "localstack_resource_bucket" {
  description = <<-EOF
    The S3 bucket previously created via by `localstack-resources-setup` docker
    container.

EOF

  value = data.aws_s3_bucket.localstack_bucket.bucket
}

output "localstack_resource_bucket_objects" {
  description = <<-EOF
    The objects within the S3 bucket created via by `localstack-resources-setup`
    docker container.

EOF

  value = data.aws_s3_objects.localstack_objects.keys[*]
}

output "localstack_resource_queue" {
  description = <<-EOF
    The SQS previously created via by `localstack-resources-setup` docker
    container.

EOF

  value = data.aws_sqs_queue.localstack_queue.name
}

output "terraform_queue" {
  description = <<-EOF
    The SQS created via Terraform.

EOF

  value = aws_sqs_queue.terraform_queue.name
}

output "terraform_bucket" {
  description = <<-EOF
    The S3 bucket created via Terraform.

EOF

  value = aws_s3_bucket.terraform_bucket.bucket
}
