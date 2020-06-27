variable "server_port" {
  description = "ec2 instance port for HTTP requests"
  type        = number
  default     = 80
}

variable "ssh_key" {
  description = "ssh public key"
  type = string
}

variable "bootstrap_file" {
  description = "ec2 bootstrap file path"
  type = string
}

variable "central_acc" {
  description = "central account id"
  type = string
}

variable "dev_acc" {
  description = "dev account id"
  type = string
}

variable "html" {
  description = "html file path"
  type = string
}

variable "lambda_code" {
  description = "lambda function code path"
  type = string
}

variable "s3_bucket" {
  description = "s3 bucket name"
  type = string
}