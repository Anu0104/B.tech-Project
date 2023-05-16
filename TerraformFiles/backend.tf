terraform {
  backend "s3" {
    bucket = "eks-bucket"
    key    = "stateFile"
    region = "ap-south-1"
  }
}
