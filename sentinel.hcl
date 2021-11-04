module "tfplan-functions" {
    source = "./tfplan-functions.sentinel"
}

  module "tfplan/v2" {
    source = "./mocks/mock-tfplan-v2.sentinel"
  }


policy "enforce-secure-reboot" {
  source            = "./enforce-secure-reboot.sentinel"
  enforcement_level = "advisory"  
}

policy "Restrict-MachineType" {
  source            = "./Restrict-MachineType.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "ensure-vptm-enabled" {
  source            = "./ensure-vptm-enabled.sentinel"
  enforcement_level = "advisory"
}



