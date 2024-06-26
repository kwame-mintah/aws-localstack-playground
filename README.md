# 🛝 AWS LocalStack Playground

As the name of the repository suggests, it's just a [_playground_](https://dictionary.cambridge.org/dictionary/english/playground).
Will be using it to play with different AWS services supported by the [LocalStack](https://docs.localstack.cloud/overview/), to gain a better understanding.

## Prerequisites

1. [Docker for desktop](https://docs.docker.com/desktop/)

## Usage

In order to create the LocalStack containers, please copy `.env.template` and / or amend environment variables into a
new file `.env` to be used by Docker.

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

> [!NOTE]
>
> If running any of the example code found in `/examples/` ports will need to be available on the host machine unless the code is
> executed within a docker container within the same network.

There is nothing else to it, fairly straight forward.
