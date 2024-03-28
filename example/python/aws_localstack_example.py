import os

import boto3

BUCKET_NAME = os.environ.get('BUCKET_NAME', 'bucket-uno')
aws_localstack = os.environ.get('LOCALSTACK_URL', 'http://eu-west-2.localhost.localstack.cloud:4566')


class AWSS3BucketManager:
    """
    Example class for overriding AWS Endpoint.
    """

    def __init__(self):
        # Must set environment variable AWS_ENDPOINT_URL before creating boto3 client.
        self.__enable_localstack()
        self.client = boto3.client('s3', region_name='eu-west-2')

    @staticmethod
    def __enable_localstack() -> None:
        if os.environ.get('LOCALSTACK_OVERRIDE'):
            # Set environment variable AWS_ENDPOINT_URL, if LOCALSTACK_OVERRIDE is set to true.
            # https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-envvars.html
            print('Localstack override enabled. \n Overriding AWS Endpoint URL for all services.')
            os.environ['AWS_ENDPOINT_URL'] = aws_localstack

    def upload_to_bucket(
            self, filename: str, bucket: str, key: str,
    ) -> None:
        """
        Upload file to the s3 bucket.

        :param filename: The path to the file to upload.
        :param bucket: The name of the bucket to upload to.
        :param key: The name of the key to upload to.
        :return:
        """
        self.client.upload_file(Filename=filename, Bucket=bucket, Key=key)

    def read_object_from_bucket(
            self, bucket: str, key: str,
    ) -> bytes:
        """
        Read object from s3 bucket.

        :param bucket: The bucket name containing the object.
        :param key: Key of the object to get.
        :return:
        """
        read_file = self.client.get_object(Bucket=bucket, Key=key)
        return read_file['Body'].read()


def main():
    """
    Upload file into s3 bucket then read contents of the file form the bucket.
    """
    s3 = AWSS3BucketManager()
    s3.upload_to_bucket(filename='../python/example.json', key='/examples/example.json', bucket=BUCKET_NAME)
    contents = s3.read_object_from_bucket(bucket=BUCKET_NAME, key='/examples/example.json')
    assert contents == b'{\n  "message" : "Hello World!"\n}\n'


if __name__ == '__main__':
    main()
