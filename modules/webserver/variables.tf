variable "server_port" {
  description = "ec2 instance port for HTTP requests"
  type        = number
  default     = 80
}

variable "ssh_key" {
  description = "ssh public key"
  type        = string
}

variable "central_acc" {
  description = "central account id"
  type        = string
}

variable "bootstrap_file" {
  description = "ec2 bootstrap file path"
  type        = string
  default     = "./modules/webserver/cloud-config/web_server_init.sh"
}

variable "s3_arn" {
  description = "s3 bucket arn"
  type        = string
}

variable "s3_object_key" {
  description = "s3 bucket html object key"
  type        = string
}