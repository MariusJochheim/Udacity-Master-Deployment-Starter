# Infrastructure Architecture

```mermaid
graph TD
    User[User Browser]
    Frontend[AWS S3 Static Website<br/>Ionic/Angular Frontend]
    API[AWS Elastic Beanstalk<br/>Node.js/Express API]
    DB[AWS RDS PostgreSQL<br/>Application Database]
    Uploads[AWS S3 Bucket<br/>Uploaded Images]
    CircleCI[CircleCI]

    User -->|Loads static site| Frontend
    Frontend -->|HTTP API requests| API
    API -->|Reads and writes data| DB
    API -->|Stores image objects| Uploads
    User -->|Views uploaded images| Uploads
    CircleCI -->|Deploys frontend build| Frontend
    CircleCI -->|Deploys API build| API
```

This diagram shows the high-level production infrastructure used by Udagram. The frontend is hosted from S3, the API runs on Elastic Beanstalk, persistent data is stored in RDS PostgreSQL, and uploaded files are stored in S3.
