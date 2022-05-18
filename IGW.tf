resource "oci_core_internet_gateway" "IGW" {
    compartment_id = var.Compartment_Silviu
    vcn_id = oci_core_vcn.TestVCN.id
    display_name = "IGW"
}

