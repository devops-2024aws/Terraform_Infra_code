//This will display the public ip address in the terminal

output "publicIp" {
    value = aws_instance.importEc2.public_ip
    //By default sentivie is flase when we given sensitive=true 
    //it will not display the ip address on the terminal
    // to view the output on terminal
    sensitive = true
  
}

output "privateIp" {
    value = aws_instance.importEc2.private_ip
  
}