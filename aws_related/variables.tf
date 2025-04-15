variable "ami" {
  default = "ami-08d70e59c07c61a3a"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_name" {
  default = "batch3-demo-instance"
}

variable "bucket_name" {
  default = "batch3-demo-bucket-90239423"
}

variable "state_bucket_name" {
  default = "batch3-demo-bucket-3452342345"
}

variable "state_table_name" {
  default = "batch3-demo-state-table"
}

variable "aws_region" {
  default = "us-west-2"
}
