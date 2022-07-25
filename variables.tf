variable "string" {
  type        = string
  description = "for string"
  default     = "default variables"
}

variable "content" {
  type    = string
  default = "String output"
}

#for Number
variable "number" {
  type    = number
  default = 347849726
}

#for List
variable "list1" {
  type        = list
  description = "list"
  default     = ["see", "sea", "saw", "1"]
}

#for Map
variable "map" {
  type= map
  description = "map test"
  default = {
    "key1" = "hello"
    "key2" = "world"
    "key3" = "universe"
  }
}

#for object
variable "object" {
  type    = object({
  name    = string
  content = string
  })
  default   = {
    content = "Hello World !"
    name    = "object"
  }
}

#for tfvars
variable "name" {
  type    = string
  default = "for tfvars"
}

variable "output" {
    type    = number
    default = 123456789
}