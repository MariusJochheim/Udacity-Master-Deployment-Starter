# Pipeline Description

## Overview

The deployment pipeline is configured in `.circleci/config.yml`. CircleCI is connected to the GitHub repository and runs the workflow when code is pushed to the `main` or `master` branch.

## Pipeline Steps

1. Checkout source code from GitHub.
2. Install frontend dependencies with `npm run frontend:install`.
3. Install API dependencies with `npm run api:install`.
4. Run frontend linting with `npm run frontend:lint`.
5. Build the frontend with `npm run frontend:build`.
6. Build the API with `npm run api:build`.
7. Persist the frontend and API build outputs to the CircleCI workspace.
8. Wait for manual approval in the `hold` job.
9. Deploy the API to Elastic Beanstalk with `npm run api:deploy`.
10. Deploy the frontend build to S3 with `aws s3 sync`.
11. Configure the S3 bucket for static website hosting.

## Pipeline Diagram

See [Pipeline.md](Pipeline.md).

## CircleCI Screenshots

![CircleCI environment variables](../screenshots/Environment_Variables.png)

![CircleCI build job](../screenshots/Workflows_build.png)

![CircleCI hold job](../screenshots/Workflows_hold.png)

![CircleCI deploy job](../screenshots/Workflows_deploy.png)

## Secrets

Production secrets are configured in CircleCI project environment variables and passed to the deployment commands. These values are not committed to the repository.

Required CircleCI environment variables include:

- `AWS_ACCESS_KEY_ID`
- `AWS_SECRET_ACCESS_KEY`
- `AWS_DEFAULT_REGION`
- `AWS_BUCKET`
- `POSTGRES_HOST`
- `POSTGRES_PORT`
- `POSTGRES_DB`
- `POSTGRES_USER`
- `POSTGRES_PASSWORD`
- `JWT_SECRET`
