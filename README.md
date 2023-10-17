# 🛝 AWS LocalStack Playground

 As the name of the repository suggests, it's just a [*playground*](https://dictionary.cambridge.org/dictionary/english/playground).
 Will be using it to play with different AWS services supported by the [LocalStack](https://docs.localstack.cloud/overview/), to gain a better understanding.

## Prerequisites

1. [Docker for desktop](https://docs.docker.com/desktop/)

## Usage

### Running the LocalStack

1. Clone the repository locally
2. Run the following command:

   ```shell
   docker-compose up -d
   ```

### Running the LocalStack with ports available

1. Clone the repository locally
2. Run the following command:

   ```shell
   docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d
   ```

There is nothing else to it, fairly straight forward.
