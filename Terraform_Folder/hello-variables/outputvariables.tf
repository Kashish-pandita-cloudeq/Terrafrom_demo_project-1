output printname {
    value = "Hello, ${var.username},Your age is ${var.age}"
         
}


#For output without interaction "terraform plan -var "username=KAshish PAndita " -var "age=25""