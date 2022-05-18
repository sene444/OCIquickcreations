variable "Compartment_Silviu" {
    default = "ocid1.compartment.oc1..aaaaaaaatugjo2bcrwpvldgdrsureaf2oxznf3kfiwiwxwm7jqpemozv2zfa"
}

variable "vcn_cidr_block" {
    default = "192.168.0.0/16" 
}

variable "vcn_display_name" {
    default = "Terraform VCN"
}

variable "subnet_cidr_block_web" {
    default = "192.168.1.0/24"
}

variable "subnet_availability_domain" {
    default = "ntyR:UK-LONDON-1-AD-1"
  
}

variable "subnet_cidr_block_db" {
    default = "192.168.2.0/24"
}

variable "assing_PublicIP_on_vnic" {
    default = false
  
}

variable "subnet_prohibit_internet_ingress" {
    default = true
}

variable "subnet_prohibit_public_ip_on_vnic" {
    default = true
}

variable "ports" {
    type    = list(number)
    description = "list of ingress ports"
    default = ["80","443","22"]
}