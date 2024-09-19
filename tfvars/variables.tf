variable "instances" {

  type = map

}

variable "zone_id" {
  default = "Z0611814E52U7VHECUW0"
}
variable "domain_name" {

  default = "lpdevops.online"
}

variable "common_tags" {
  default = {
    project   = "expense"
    terraform = "true"
  }
}

variable "tags" {

  type = map
}

variable "environment" {

}