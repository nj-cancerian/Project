Create a virtual network
Create a subnet
Create a public IP address
Create a network security group and SSH inbound rule
Create a virtual network interface card
Connect the network security group to the network interface
Create a storage account for boot diagnostics
Create SSH key
Create a virtual machine
Use SSH to connect to virtual machine

############### creating terraform file and follow the other steps #############
terraform init
terraform plan 
terraform 
terraform output -raw tls_private_key > id_rsa

To connect to azure networks #ssh -i id_rsa azureuser@<public_ip_address> 