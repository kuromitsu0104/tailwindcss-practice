variable "SWITCH_ROLE" {}

provider "aws" {
  region = "ap-northeast-1"
  assume_role {
    role_arn = var.SWITCH_ROLE
  }
}
