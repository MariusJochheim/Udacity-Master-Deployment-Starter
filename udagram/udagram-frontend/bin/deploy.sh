if [ -z "$AWS_BUCKET" ]; then
  echo "AWS_BUCKET must be set before deploying the frontend."
  exit 1
fi

if [ -z "$AWS_REGION" ]; then
  echo "AWS_REGION must be set before deploying the frontend."
  exit 1
fi

aws s3 cp --recursive --acl public-read ./www "s3://${AWS_BUCKET}/" --region "$AWS_REGION"
aws s3 cp --acl public-read --cache-control="max-age=0, no-cache, no-store, must-revalidate" ./www/index.html "s3://${AWS_BUCKET}/" --region "$AWS_REGION"
