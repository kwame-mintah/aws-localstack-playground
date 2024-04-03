output "localstack_resource_bucket" {
  description = <<-EOF
    The S3 Bucket previously created via by `localstack-resources-setup` docker
    container.

EOF

  value = data.aws_s3_bucket.localstack_bucket.bucket
}

output "localstack_resource_bucket_objects" {
  description = <<-EOF
    The objects within the S3 Bucket created via by `localstack-resources-setup`
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
