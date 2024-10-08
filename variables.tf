variable "region" {
  description = "La región donde se desplegará la VPC"
  default     = "us-east-1"  # Cambiado a us-east-1
}

variable "vpc_cidr" {
  description = "El CIDR block para la VPC"
  default     = "30.0.0.0/16"
}
