# Copy to backend.tf and replace 042186225029. Same state bucket and lock table
# you created for Labs 1-2, but a DIFFERENT key, so this stack has its own state.
terraform {
  backend "s3" {
    bucket         = "northstar-tfstate-042186225029"
    key            = "agent/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "northstar-tfstate-lock" # same lock table as Labs 1-2
    encrypt        = true
  }
}
