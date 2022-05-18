resource "oci_core_subnet" "Web" {
    cidr_block = var.subnet_cidr_block_web
    compartment_id = var.Compartment_Silviu
    vcn_id = oci_core_vcn.TestVCN.id
    route_table_id = oci_core_route_table.RTforWeb.id
    security_list_ids = [oci_core_security_list.forSubnetWeb.id]
    display_name = "WebSubnet"
}


resource "oci_core_subnet" "DB" {
    cidr_block = var.subnet_cidr_block_db
    compartment_id = var.Compartment_Silviu
    vcn_id = oci_core_vcn.TestVCN.id
    route_table_id = oci_core_route_table.RTforDB.id
    security_list_ids =[oci_core_security_list.forDB.id]
    display_name = "DBsubnet"
    prohibit_internet_ingress = var.subnet_prohibit_internet_ingress
    prohibit_public_ip_on_vnic = var.subnet_prohibit_public_ip_on_vnic
}