# for best practices we use variable file in terraform 
variable "credentials" {
  type = string
}

variable "project" {
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string  
}

variable "name" {
  type = set(string)
}

variable "machine_type" {
  type = string  
}


variable "image" {
  type = string
}

