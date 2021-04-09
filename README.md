## Step 1 - Host Static Site

- Website
  - Single Hello World HTML file
- Terraform
  - One static-site module
    - IAM Policy
    - S3 bucket
    - route53 (removed for Demo)

Copy dist to the s3 bucket
- aws s3 sync dist s3://$YOUR_DOMAIN

## Step 2 - Add Express API

- Nodejs API
  - Simple Hello world returned
- Add Dockerfile

Build docker image
- docker build -t terraform-demo .

run docker image locally
- docker run -p 12345:3000 -d terraform-demo

Kill the docker process
- docker ps
- docker kill