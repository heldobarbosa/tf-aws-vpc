module "network" {
  source = "./network"
  name = "network"                                  #"Nome da VPC"
  cidr = "10.0.0.0/16"                              #"cidr block"
  azs = ""                                          #"Availability Zones onde as subnets serão criadas; caso vazia, serão usadas as AZs da região configurada"
  enable_dns_hostnames = true                       #"Habilita hostnames DNS na VPC"
  enable_dns_support = true                         #"Habilita suporte a DNS na VPC"
  instance_tenancy = "default"                      #"Tipo de locação de instâncias criadas na VPC"
  enable_nat_gateway = true                      #"Habilita criação de um NAT Gateway; requer ao menos uma subnet pública"
  external_nat_gateway_eip_id = ""                  #"ID de um Elastic IP pré-existente para o NAT Gateway; caso não definido, um novo Elastic IP será criado"
  enable_vpn_gateway = false                        #"Habilita criação de um VPN Gateway (VGW) para a VPC"
  vpn_gateway_id = ""                               #"ID de um VPN Gateway existente para vincular à VPC; requer que `enable_vpn_gateway` seja habilitada"
  vpn_gateway_tags = {}                             #"Tags aplicadas ao VPN Gateway"
  enable_private_route_table_propagation = false    #"Habilita propagação de rotas do VPN Gateway para a route table privada"
  enable_public_route_table_propagation = false     #"Habilita propagação de rotas do VPN Gateway para a route table pública"
  enable_database_route_table_propagation = false   #"Habilita propagação de rotas do VPN Gateway para a route table de bancos de dados"
  private_subnets = ["10.0.2.0/24"]                 #"Lista de CIDRs das subnets privadas"
  private_subnet_names = []                         #"Lista de nomes das subnets privadas"
  private_subnet_suffix = "private-subnet"          #"Sufixo para os nomes das subnets privadas"
  private_subnet_tags = {}                          #"Tags aplicadas às subnets privadas"
  name-default-sg = ""                              #"default"
  public_subnets = ["10.0.1.0/24"]                  #"Lista de CIDRs das subnets públicas"
  public_subnet_names = []                          #"Lista de nomes das subnets públicas"
  public_subnet_suffix = "public-subnet"            #"Sufixo para os nomes das subnets públicas"
  public_subnet_tags = {}                           #"Tags aplicadas às subnets públicas"
#  database_subnets = []                            #"Lista de CIDRs das subnets de bancos de dados"
#  database_subnet_names = []                       #"Lista de nomes das subnets de bancos de dados"
#  database_subnet_suffix = "database-subnet"       #"Sufixo para os nomes das subnets de bancos de dados"
#  database_subnet_tags = {}                        #"Tags aplicadas às subnets de bancos de dados"
#  create_db_subnet_group = true                    #"Habilita a criação de um DB subnet group contendo as subnets de bancos de dados"
#  enable_route53_private_zone = false              #"Habilita criação de uma zona DNS privada da VPC"
#  route53_private_zone_name = ""                   #"Nome da zona DNS privada da VPC"
  allow_all_egress = true                           #"Habilita wildcard (`0.0.0.0/0`) como regra de saída do security group padrão"
  allow_extra_cidr_blocks = []                      #"Lista de CIDRs adicionais para liberação de entrada no security group da VPC; requer que `enable_default_security_group` seja habilitada"
  allow_extra_cidr_blocks_egress = []               #"Lista de CIDRs adicionais para liberação de saída no security group da VPC; requer que `enable_default_security_group` seja habilitada"
  peering_routes = []                               #"Lista com CIDRs e IDs de VPC peerings de destino; cada item deve seguir o formato `0.0.0.0/0:pcx-abc123`"
  tags = {}                                         #"Map de tags comuns a todos os recursos"
  enable_default_security_group = true              #"Habilita criação de um security group padrão para a VPC"
  default_security_group_description = "santoandre" #"Descrição do security group default da VPC"
}
module "network" {
  source = "./network"
  name = "network"                                  #"Nome da VPC"
  cidr = "10.0.0.0/16"                              #"cidr block"
  azs = ""                                          #"Availability Zones onde as subnets serão criadas; caso vazia, serão usadas as AZs da região configurada"
  enable_dns_hostnames = true                       #"Habilita hostnames DNS na VPC"
  enable_dns_support = true                         #"Habilita suporte a DNS na VPC"
  instance_tenancy = "default"                      #"Tipo de locação de instâncias criadas na VPC"
  enable_nat_gateway = true                         #"Habilita criação de um NAT Gateway; requer ao menos uma subnet pública"
  external_nat_gateway_eip_id = ""                  #"ID de um Elastic IP pré-existente para o NAT Gateway; caso não definido, um novo Elastic IP será criado"
  enable_vpn_gateway = false                        #"Habilita criação de um VPN Gateway (VGW) para a VPC"
  vpn_gateway_id = ""                               #"ID de um VPN Gateway existente para vincular à VPC; requer que `enable_vpn_gateway` seja habilitada"
  vpn_gateway_tags = {}                             #"Tags aplicadas ao VPN Gateway"
  enable_private_route_table_propagation = false    #"Habilita propagação de rotas do VPN Gateway para a route table privada"
  enable_public_route_table_propagation = false     #"Habilita propagação de rotas do VPN Gateway para a route table pública"
  enable_database_route_table_propagation = false   #"Habilita propagação de rotas do VPN Gateway para a route table de bancos de dados"
  private_subnets = ["10.0.2.0/24"]                 #"Lista de CIDRs das subnets privadas"
  private_subnet_names = []                         #"Lista de nomes das subnets privadas"
  private_subnet_suffix = "private-subnet"          #"Sufixo para os nomes das subnets privadas"
  private_subnet_tags = {}                          #"Tags aplicadas às subnets privadas"
  name-default-sg = ""                              #"default"
  public_subnets = ["10.0.1.0/24"]                  #"Lista de CIDRs das subnets públicas"
  public_subnet_names = []                          #"Lista de nomes das subnets públicas"
  public_subnet_suffix = "public-subnet"            #"Sufixo para os nomes das subnets públicas"
  public_subnet_tags = {}                           #"Tags aplicadas às subnets públicas"
#  database_subnets = []                            #"Lista de CIDRs das subnets de bancos de dados"
#  database_subnet_names = []                       #"Lista de nomes das subnets de bancos de dados"
#  database_subnet_suffix = "database-subnet"       #"Sufixo para os nomes das subnets de bancos de dados"
#  database_subnet_tags = {}                        #"Tags aplicadas às subnets de bancos de dados"
#  create_db_subnet_group = true                    #"Habilita a criação de um DB subnet group contendo as subnets de bancos de dados"
#  enable_route53_private_zone = false              #"Habilita criação de uma zona DNS privada da VPC"
#  route53_private_zone_name = ""                   #"Nome da zona DNS privada da VPC"
  allow_all_egress = true                           #"Habilita wildcard (`0.0.0.0/0`) como regra de saída do security group padrão"
  allow_extra_cidr_blocks = []                      #"Lista de CIDRs adicionais para liberação de entrada no security group da VPC; requer que `enable_default_security_group` seja habilitada"
  allow_extra_cidr_blocks_egress = []               #"Lista de CIDRs adicionais para liberação de saída no security group da VPC; requer que `enable_default_security_group` seja habilitada"
  peering_routes = []                               #"Lista com CIDRs e IDs de VPC peerings de destino; cada item deve seguir o formato `0.0.0.0/0:pcx-abc123`"
  tags = {}                                         #"Map de tags comuns a todos os recursos"
  enable_default_security_group = true              #"Habilita criação de um security group padrão para a VPC"
  default_security_group_description = "santoandre" #"Descrição do security group default da VPC"
}

module "network" {
  source = "./network"
  name = "network"                                  #"Nome da VPC"
  cidr = "10.0.0.0/16"                              #"cidr block"
  azs = ""                                          #"Availability Zones onde as subnets serão criadas; caso vazia, serão usadas as AZs da região configurada"
  enable_dns_hostnames = true                       #"Habilita hostnames DNS na VPC"
  enable_dns_support = true                         #"Habilita suporte a DNS na VPC"
  instance_tenancy = "default"                      #"Tipo de locação de instâncias criadas na VPC"
  enable_nat_gateway = true                         #"Habilita criação de um NAT Gateway; requer ao menos uma subnet pública"
  external_nat_gateway_eip_id = ""                  #"ID de um Elastic IP pré-existente para o NAT Gateway; caso não definido, um novo Elastic IP será criado"
  enable_vpn_gateway = false                        #"Habilita criação de um VPN Gateway (VGW) para a VPC"
  vpn_gateway_id = ""                               #"ID de um VPN Gateway existente para vincular à VPC; requer que `enable_vpn_gateway` seja habilitada"
  vpn_gateway_tags = {}                             #"Tags aplicadas ao VPN Gateway"
  enable_private_route_table_propagation = false    #"Habilita propagação de rotas do VPN Gateway para a route table privada"
  enable_public_route_table_propagation = false     #"Habilita propagação de rotas do VPN Gateway para a route table pública"
  enable_database_route_table_propagation = false   #"Habilita propagação de rotas do VPN Gateway para a route table de bancos de dados"
  private_subnets = ["10.0.2.0/24"]                 #"Lista de CIDRs das subnets privadas"
  private_subnet_names = []                         #"Lista de nomes das subnets privadas"
  private_subnet_suffix = "private-subnet"          #"Sufixo para os nomes das subnets privadas"
  private_subnet_tags = {}                          #"Tags aplicadas às subnets privadas"
  name-default-sg = ""                              #"default"
  public_subnets = ["10.0.1.0/24"]                  #"Lista de CIDRs das subnets públicas"
  public_subnet_names = []                          #"Lista de nomes das subnets públicas"
  public_subnet_suffix = "public-subnet"            #"Sufixo para os nomes das subnets públicas"
  public_subnet_tags = {}                           #"Tags aplicadas às subnets públicas"
#  database_subnets = []                            #"Lista de CIDRs das subnets de bancos de dados"
#  database_subnet_names = []                       #"Lista de nomes das subnets de bancos de dados"
#  database_subnet_suffix = "database-subnet"       #"Sufixo para os nomes das subnets de bancos de dados"
#  database_subnet_tags = {}                        #"Tags aplicadas às subnets de bancos de dados"
#  create_db_subnet_group = true                    #"Habilita a criação de um DB subnet group contendo as subnets de bancos de dados"
#  enable_route53_private_zone = false              #"Habilita criação de uma zona DNS privada da VPC"
#  route53_private_zone_name = ""                   #"Nome da zona DNS privada da VPC"
  allow_all_egress = true                           #"Habilita wildcard (`0.0.0.0/0`) como regra de saída do security group padrão"
  allow_extra_cidr_blocks = []                      #"Lista de CIDRs adicionais para liberação de entrada no security group da VPC; requer que `enable_default_security_group` seja habilitada"
  allow_extra_cidr_blocks_egress = []               #"Lista de CIDRs adicionais para liberação de saída no security group da VPC; requer que `enable_default_security_group` seja habilitada"
  peering_routes = []                               #"Lista com CIDRs e IDs de VPC peerings de destino; cada item deve seguir o formato `0.0.0.0/0:pcx-abc123`"
  tags = {}                                         #"Map de tags comuns a todos os recursos"
  enable_default_security_group = true              #"Habilita criação de um security group padrão para a VPC"
  default_security_group_description = "santoandre" #"Descrição do security group default da VPC"
}

module "network" {
  source = "./network"
  name = "network"                                  #"Nome da VPC"
  cidr = "10.0.0.0/16"                              #"cidr block"
  azs = ""                                          #"Availability Zones onde as subnets serão criadas; caso vazia, serão usadas as AZs da região configurada"
  enable_dns_hostnames = true                       #"Habilita hostnames DNS na VPC"
  enable_dns_support = true                         #"Habilita suporte a DNS na VPC"
  instance_tenancy = "default"                      #"Tipo de locação de instâncias criadas na VPC"
  enable_nat_gateway = true                         #"Habilita criação de um NAT Gateway; requer ao menos uma subnet pública"
  external_nat_gateway_eip_id = ""                  #"ID de um Elastic IP pré-existente para o NAT Gateway; caso não definido, um novo Elastic IP será criado"
  enable_vpn_gateway = false                        #"Habilita criação de um VPN Gateway (VGW) para a VPC"
  vpn_gateway_id = ""                               #"ID de um VPN Gateway existente para vincular à VPC; requer que `enable_vpn_gateway` seja habilitada"
  vpn_gateway_tags = {}                             #"Tags aplicadas ao VPN Gateway"
  enable_private_route_table_propagation = false    #"Habilita propagação de rotas do VPN Gateway para a route table privada"
  enable_public_route_table_propagation = false     #"Habilita propagação de rotas do VPN Gateway para a route table pública"
  enable_database_route_table_propagation = false   #"Habilita propagação de rotas do VPN Gateway para a route table de bancos de dados"
  private_subnets = ["10.0.2.0/24"]                 #"Lista de CIDRs das subnets privadas"
  private_subnet_names = []                         #"Lista de nomes das subnets privadas"
  private_subnet_suffix = "private-subnet"          #"Sufixo para os nomes das subnets privadas"
  private_subnet_tags = {}                          #"Tags aplicadas às subnets privadas"
  name-default-sg = ""                              #"default"
  public_subnets = ["10.0.1.0/24"]                  #"Lista de CIDRs das subnets públicas"
  public_subnet_names = []                          #"Lista de nomes das subnets públicas"
  public_subnet_suffix = "public-subnet"            #"Sufixo para os nomes das subnets públicas"
  public_subnet_tags = {}                           #"Tags aplicadas às subnets públicas"
#  database_subnets = []                            #"Lista de CIDRs das subnets de bancos de dados"
#  database_subnet_names = []                       #"Lista de nomes das subnets de bancos de dados"
#  database_subnet_suffix = "database-subnet"       #"Sufixo para os nomes das subnets de bancos de dados"
#  database_subnet_tags = {}                        #"Tags aplicadas às subnets de bancos de dados"
#  create_db_subnet_group = true                    #"Habilita a criação de um DB subnet group contendo as subnets de bancos de dados"
#  enable_route53_private_zone = false              #"Habilita criação de uma zona DNS privada da VPC"
#  route53_private_zone_name = ""                   #"Nome da zona DNS privada da VPC"
  allow_all_egress = true                           #"Habilita wildcard (`0.0.0.0/0`) como regra de saída do security group padrão"
  allow_extra_cidr_blocks = []                      #"Lista de CIDRs adicionais para liberação de entrada no security group da VPC; requer que `enable_default_security_group` seja habilitada"
  allow_extra_cidr_blocks_egress = []               #"Lista de CIDRs adicionais para liberação de saída no security group da VPC; requer que `enable_default_security_group` seja habilitada"
  peering_routes = []                               #"Lista com CIDRs e IDs de VPC peerings de destino; cada item deve seguir o formato `0.0.0.0/0:pcx-abc123`"
  tags = {}                                         #"Map de tags comuns a todos os recursos"
  enable_default_security_group = true              #"Habilita criação de um security group padrão para a VPC"
  default_security_group_description = "santoandre" #"Descrição do security group default da VPC"
}
