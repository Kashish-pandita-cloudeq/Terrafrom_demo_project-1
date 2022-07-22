variable "userage" {
    type = map
    default = {
        rakesh = 23
        ramesh = 20
    }
}

variable "username" {
    type = string
}

variable "objects" {
  type = list
  description = "list of objects"
  default = [
      {
        id = "name1"
        attribute = "a"
      },
      {
        id = "name2"
        attribute = "a,b"
      },
      {
        id = "name3"
        attribute = "d"
      }
  ]
}

