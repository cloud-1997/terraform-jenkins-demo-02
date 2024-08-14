terraform {
  backend "s3" {
    bucket = "my-dev-terra-jen-01"
    key    = "terraform/tf.state"
    region = "us-east-1"
  }
}
