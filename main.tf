#random_id and locals usage
resource "local_file" "file1" {
    filename = local.name1
    content  = "${random_id.content1.hex}"
  
}
locals {
    name1    = "file1.txt"
    content1 = "Hi this is me"
}

resource "random_id" "content1" {
  byte_length = 6
}

#only locals
resource "local_file" "file" {
    filename = local.name
    content  = local.content
}

locals {
  name    = "TestFILE.txt"
  content = "using locals in terraform"
}

#String
resource "local_file" "file2" {
    filename = "string_file.txt"
    content  = var.string
}

#map
resource "local_file" "file5" {
  filename = "map_ouput.txt"
  content  = var.map["key3"]
}

#list
resource "local_file" "file4" {
  filename = "list_file.txt"
  content  = var.list1[2]
}

#number
resource "local_file" "file3" {
  filename = "num_file.txt"
  content  = var.number
}

#object
resource "local_file" "object" {
  filename = "obj.txt"
  content  = var.object["content"]
}

#tfvars
resource "local_file" "tfvars" {
  filename = var.name
  content  = var.content
}

#Output 
resource "local_file" "new" {
  filename = var.name
  content  = var.content
}
output "output_name" {
  value = local_file.file1.content
}
