# Application Dependencies

## Runtime

- Node.js `14.15` is used by the CircleCI build and deploy jobs.
- npm is used to install dependencies and run project scripts.
- AWS CLI is used to deploy the frontend build to S3.
- Elastic Beanstalk CLI is used to deploy the backend API.

## Frontend

Path: `udagram/udagram-frontend`

The frontend is an Ionic/Angular application.

Main dependencies:

- `@angular/*`
- `@ionic/angular`
- `rxjs`
- `zone.js`
- `core-js`

Main development dependencies:

- `@angular/cli`
- `@angular-devkit/build-angular`
- `typescript`
- `tslint`
- `karma`
- `jasmine-core`
- `protractor`

Important scripts:

- `npm run start` starts the local Angular development server.
- `npm run build` creates the production frontend build.
- `npm run test` runs frontend tests.
- `npm run lint` runs frontend linting.
- `npm run deploy` builds and deploys the frontend to S3.

## API

Path: `udagram/udagram-api`

The backend is a Node.js/Express API written in TypeScript.

Main dependencies:

- `express`
- `sequelize`
- `sequelize-typescript`
- `pg`
- `aws-sdk`
- `bcryptjs`
- `jsonwebtoken`
- `dotenv`
- `cors`

Main development dependencies:

- `typescript`
- `ts-node-dev`
- `eslint`
- `mocha`
- `chai`
- `@types/*`

Important scripts:

- `npm run dev` starts the API locally with `ts-node-dev`.
- `npm run build` compiles TypeScript and creates the Elastic Beanstalk deployment bundle.
- `npm run deploy` builds and deploys the API to Elastic Beanstalk.

## Root Project Scripts

Path: `package.json`

The root package file orchestrates both applications:

- `frontend:install`
- `frontend:build`
- `frontend:test`
- `frontend:lint`
- `frontend:deploy`
- `api:install`
- `api:build`
- `api:start`
- `api:deploy`
- `deploy`
