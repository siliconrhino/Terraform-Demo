## Step 1 - Host Static Site

- Website
  - Single Hello World HTML file
- Terraform
  - One static-site module
    - IAM Policy
    - S3 bucket
    - route53 (removed for Demo)

Copy dist to the s3 bucket
aws s3 sync dist s3://$YOUR_DOMAIN
