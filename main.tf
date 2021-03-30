provider "aws" {
  region  = "us-east-1"
}

terraform {
  backend "s3" {
    # Lembre de trocar o bucket para o seu, não pode ser o mesmo nome
    bucket = "bucketheldo0.12"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
