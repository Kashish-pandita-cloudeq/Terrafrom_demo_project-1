output "userage" {
    value = "my name is ${var.username} and my age is ${lookup(var.userage, "${var.username}")}"
}

output "object" {
    value = var.objects[index(var.objects.*.id, "name2")]
    
}