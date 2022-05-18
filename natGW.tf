resource "oci_core_nat_gateway" "test_nat_gateway" {
    compartment_id = var.Compartment_Silviu
    vcn_id = oci_core_vcn.TestVCN.id
    display_name = "natGW"
}
