resource "oci_core_instance" "PublicInstance" {
    availability_domain = "ntyR:UK-LONDON-1-AD-1"
    compartment_id      =  var.Compartment_Silviu
    shape               = "VM.Standard2.1"
    display_name        = "WebFromTerraform"
    create_vnic_details {
        assign_public_ip = true
        subnet_id        = oci_core_subnet.Web.id
    }

    source_details {      
        source_id = "ocid1.image.oc1.uk-london-1.aaaaaaaadwao26icgeoa7oqi7asokxkdllua6ypyyc2avm5yb2qovrup6zaa"
        source_type = "image"
    }

    metadata = {
        ssh_authorized_keys = file("/home/opc/.ssh/id_rsa.pub")
        user_data = base64encode(file("/home/opc/VCN_subnet_instance/bootstrap"))
    }
}

