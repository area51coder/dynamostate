provider "aws" {
region = "us-east-2"
}
terraform {
backend "s3" {
# Replace this with your bucket name!
bucket = "terraform-up-and-running-state-area51"
key = "s3/terraform.tfstate"
region = "us-east-2"
# Replace this with your DynamoDB table name!
dynamodb_table = "terraform-up-and-running-locks"
encrypt = true
}
}
