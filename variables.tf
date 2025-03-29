
variable "ami_id" {
  type        = string
  default     = "ami-071226ecf16aa7d96"
  description = "instance ami used"
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
  description = "Instance type used"
}
