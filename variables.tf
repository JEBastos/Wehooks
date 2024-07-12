variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "Base AMI ID (e.g., Amazon Linux 2)"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
}

variable "github_runner_token" {
  description = "GitHub Runner Token"
  type        = string
}

variable "github_repo_url" {
  description = "GitHub Repository URL"
  type        = string
}
