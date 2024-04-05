# Create an example bucket in LocalStack.
resource "aws_s3_bucket" "terraform_bucket" {
  bucket = "my-terraform-bucket"
}

# Create an example sqs in LocalStack.
resource "aws_sqs_queue" "terraform_queue" {
  name = "my-terraform-queue"
}

# Get created bucket from `localstack-resources-setup` container.
data "aws_s3_bucket" "localstack_bucket" {
  bucket = "bucket-uno" # Change to value of `AWS_S3_BUCKET_NAME_1` from `.env`
}

# Get objects in LocalStack bucket
data "aws_s3_objects" "localstack_objects" {
  bucket = "bucket-uno" # Change to value of `AWS_S3_BUCKET_NAME_1` from `.env`
}

# Get sqs created from `localstack-resources-setup` container.
data "aws_sqs_queue" "localstack_queue" {
  name = "queue-uno" # Change to value of `AWS_QUEUE_NAME_1` from `.env`
}

# Upload example objects to S3 Bucket
resource "aws_s3_object" "tf_bucket_object" {
  bucket = aws_s3_bucket.terraform_bucket.bucket
  key    = "/terraform/example.json"
  source = "./upload/example.json"
  etag   = filemd5(("./upload/example.json"))
}

resource "aws_s3_object" "ls_bucket_object" {
  bucket = data.aws_s3_bucket.localstack_bucket.bucket
  key    = "/terraform/example.json"
  source = "./upload/example.json"
  etag   = filemd5(("./upload/example.json"))
}

# List objects found within bucket of the localstack.
data "aws_s3_object" "localstack_object_info" {
  count  = length(data.aws_s3_objects.localstack_objects.keys)
  key    = element(data.aws_s3_objects.localstack_objects.keys, count.index)
  bucket = data.aws_s3_objects.localstack_objects.id
}
