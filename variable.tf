variable "region" {
  type    = string
  default = "ap-south-1"
}

variable "bucket_name" {
  type    = string
  default = "terraform-epro-s3-bucket"
}
variable "bucket_acl" {
  type    = string
  default = "private"
}

variable "bucket_version" {
  type    = string
  default = "Disabled"
}

