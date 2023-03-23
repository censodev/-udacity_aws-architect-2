# TODO: Define the variable for aws_region
variable "aws_region" {
  type        = string
  description = "The region where the lambda function will be deployed."
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = "The profile is used to deploy the infrastructure."
  default     = "udacity"
}

variable "my_function_name" {
  type        = string
  description = "The name of function."
  default     = "greet_lambda"
}