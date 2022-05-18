resource "oci_core_vcn" "TestVCN" {
  compartment_id = var.Compartment_Silviu
  cidr_block = var.vcn_cidr_block
  display_name = var.vcn_display_name
}