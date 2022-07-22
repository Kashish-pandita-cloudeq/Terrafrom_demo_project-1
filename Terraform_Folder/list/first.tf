output printfirst {
        value = "first user is ${var.users[0]}"
}


#Lists can be used in places where security groups for instances are to declared
#for non interactive session we will give command as terraform plan -var 'users=["me","you","us"]
#output will be same as for the given program