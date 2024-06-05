
//COMANDO PARA CHAMAR O MODULO NETWORK
module "network" {
    source           = "./modules/network"
//VARIAVEL DAS VPCS DO MODULO NETWORK 
//DO LADO ESQUERDO É DO VARS DO MODULO NETWORK E DO LADO DIREITO É DO OVARS DO ORQUESTRADOR    
    vpc10_peixao     = var.vpc10_joao
    vpc20_tchutchu   = var.vpc20_will
//VARIAVEL DAS SUBNETS DO MODULO NETWORK
//DO LADO ESQUERDO É DO VARS DO MODULO NETWORK E DO LADO DIREITO É DO OVARS DO ORQUESTRADOR    
    sub_pub_az1a_vpc10_cidr = var.sub_pub_az1a_vpc10_cidr
    sub_pub_az1a_vpc20_cidr = var.sub_pub_az1a_vpc20_cidr
    sub_priv_az1c_vpc10_cidr = var.sub_priv_az1c_vpc10_cidr
    sub_priv_az1c_vpc20_cidr = var.sub_priv_az1c_vpc20_cidr
}

//COMANDO PARA CHAMAR O MODULO NETWORK
module "compute" {
    source         = "./modules/compute"
    vpc10_roro     = var.vpc10_joao 
    vpc10_id       = module.network.vpc10_id
    vpc20_tchutchu = var.vpc20_will
    vpc20_id       = module.network.vpc20_id
    vpc10_sn_pub_az1a_id = module.network.sn_pub_az1a_vpc10_id
    vpc10_sn_priv_az1c_id = module.network.sn_priv_az1c_vpc10_id
    vpc20_sn_pub_az1a_id = module.network.sn_pub_az1a_vpc20_id
    vpc20_sn_priv_az1c_id = module.network.sn_priv_az1c_vpc20_id
}