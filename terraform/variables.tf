variable "project" {
  description = "The project to deploy to, if not set the default provider project is used."
  default     = "configmgmtchallenge"
}

variable "region" {
  description = "The region defined"
  default     = "us-east4"
}

variable "zone" {
  description = "The zone defined"
  default     = "us-east4-c"
}

variable "name" {
  description = "The name of the instance"
  default     = "docker-servr"
}

variable "type" {
  description = "The type of the instance"
  default     = "e2-medium"
}

variable "tag" {
  description = "Tags to attach to the instance"
  default     = "docker"
}

variable "image" {
  description = "Image of the instance"
  default     = "ubuntu-1604-xenial-v20210429"
}

variable "network" {
  description = "Network of the instance"
  default     = "default"
}

variable "subnetwork" {
  description = "Subnet of the instance"
  default     = "default"
}

#variable "service_account" {
#  description = "Default service account"
#  default     = "694620525608-compute@developer.gserviceaccount.com"
#}
