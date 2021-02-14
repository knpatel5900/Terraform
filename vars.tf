variable "AWS_ACCESS_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
  default = "us-east-1" 
}
variable "vpcCIDRblock"{  
  default = "192.168.0.0/16"
}
variable "instanceTenancy" { 
  default = "default"
}
variable "subnetCIDRblock_private" {
  default =  "192.168.2.0/24"
}
variable "subnetCIDRblock_public" {
  default =  "192.168.1.0/24"
}
variable "mapPublicIP" {
  default = true
}
variable "availabilityZone" {
  default = "us-east-1a"
}
