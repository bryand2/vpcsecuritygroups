

# Lookup resource group
data ibm_resource_group resource_group {
  name = var.resource_group
}

# Lookup VPC
data ibm_is_vpc vpc {
  name = var.vpc_name
}

# Lookup load balancer
#data ibm_is_lb lb {
#  name = var.lb_name
#}

# Create security group
resource "ibm_is_security_group" "sg" {
    name            = var.security_group_name
    resource_group  = data.ibm_resource_group.resource_group.id
    vpc             = data.ibm_is_vpc.vpc.id
}

# Attach security group to load balancer
#resource "ibm_is_security_group_target" "lb" {
#    security_group  = ibm_is_security_group.sg.id
#    target          = data.ibm_is_lb.lb.id
#}

#
# Create security group rules
#
resource "ibm_is_security_group_rule" "sg_rule1" {
    group     = ibm_is_security_group.sg.id
    direction = "inbound"
    remote    = "192.168.5.1"
    tcp {
      port_min = 443
      port_max = 443
    }
}

resource "ibm_is_security_group_rule" "sg_rule2" {
    group     = ibm_is_security_group.sg.id
    direction = "inbound"
    remote    = "192.168.5.2"
    tcp {
      port_min = 443
      port_max = 443
    }
}

resource "ibm_is_security_group_rule" "sg_rule3" {
    group     = ibm_is_security_group.sg.id
    direction = "inbound"
    remote    = "192.168.5.3"
    tcp {
      port_min = 443
      port_max = 443
    }
}

resource "ibm_is_security_group_rule" "sg_rule4" {
    group     = ibm_is_security_group.sg.id
    direction = "inbound"
    remote    = "192.168.5.4"
    tcp {
      port_min = 443
      port_max = 443
    }
}

resource "ibm_is_security_group_rule" "sg_rule5" {
    group     = ibm_is_security_group.sg.id
    direction = "inbound"
    remote    = "192.168.5.5"
    tcp {
      port_min = 443
      port_max = 443
    }
}




  
