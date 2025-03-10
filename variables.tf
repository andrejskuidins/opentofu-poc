variable "stage" {
  type    = string
  default = "dev"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "gtpc_image" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0030e6787a44f5fdc"
}

variable "gtpc_instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t3.small"
}

variable "gtp_u_agent_image" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-003814e7676878dd6"
}

variable "gtpu_instance_type" {
  description = "Instance type for the EC2 instance"
  type        = string
  default     = "t3.micro"
}

variable "gtp-main-components" {
  description = "value of latest tag"
  type        = list(string)
  default     = ["v5.13.2"]
}

variable "gtp-main-components-single" {
  description = "value of latest tag"
  type        = string
  default     = "v5.13.2"
}