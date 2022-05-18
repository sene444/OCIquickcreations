resource "oci_core_route_table" "RTforWeb" {
    compartment_id = var.Compartment_Silviu
    vcn_id = oci_core_vcn.TestVCN.id
    display_name = "RTforWeb"
    route_rules {
        network_entity_id = oci_core_internet_gateway.IGW.id
        destination = "0.0.0.0/0"
        destination_type  = "CIDR_BLOCK"
    }
}

resource "oci_core_route_table" "RTforDB" {
    compartment_id = var.Compartment_Silviu
    vcn_id = oci_core_vcn.TestVCN.id
    display_name = "RTforDB"
    route_rules {
        network_entity_id = oci_core_nat_gateway.test_nat_gateway.id
        destination = "0.0.0.0/0"
        destination_type  = "CIDR_BLOCK"
    }
}