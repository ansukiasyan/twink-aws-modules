variable "dev_acc" {
  description = "dev account id"
  type        = string
}

variable "html" {
  description = "html file path"
  type        = string
  default     = "./modules/s3/index.html"
}


variable "s3_bucket" {
  description = "s3 bucket name"
  type        = string
}