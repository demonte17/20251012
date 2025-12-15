terraform {
  backend "s3" {
    bucket  = "d17-bucket"
    key     = "d17folder/20251214.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}