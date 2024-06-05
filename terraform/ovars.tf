variable "vpc10_joao" {
    type    = string
    default = "10.0.0.0/16"
}

variable "vpc20_will" {
    type    = string
    default = "20.0.0.0/16"
}

variable "sub_pub_az1a_vpc10_cidr" {
    type    = string
    default = "10.0.1.0/24" 
}

variable "sub_pub_az1a_vpc20_cidr" {
    type    = string
    default = "20.0.1.0/24" 
}

variable "sub_priv_az1c_vpc10_cidr" {
    type    = string
    default = "10.0.2.0/24"
}

variable "sub_priv_az1c_vpc20_cidr" {
    type    = string
    default = "20.0.2.0/24"
}