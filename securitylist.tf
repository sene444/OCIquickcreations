resource "oci_core_security_list" "forSubnetWeb" {
    compartment_id = var.Compartment_Silviu
    vcn_id = oci_core_vcn.TestVCN.id
    display_name = "ForWeb"
    egress_security_rules {
        protocol = "ALL"
        destination = "0.0.0.0/0"
    }
    dynamic "ingress_security_rules" {
        for_each = var.ports
        content {
            protocol = "6"
            source = "0.0.0.0/0"
            tcp_options {
                max = ingress_security_rules.value
                min = ingress_security_rules.value
            }
        }

    }

}

resource "oci_core_security_list" "forDB" {
    compartment_id = var.Compartment_Silviu
    vcn_id = oci_core_vcn.TestVCN.id
    display_name = "ForDB"
    egress_security_rules {
        protocol = "ALL"
        destination = "0.0.0.0/0"
    }
    ingress_security_rules {
        protocol = "6"
        source = var.subnet_cidr_block_web
        tcp_options {
                max = "22"
                min = "22"
        }
    }
}

