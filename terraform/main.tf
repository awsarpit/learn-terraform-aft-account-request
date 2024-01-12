module "member" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "arpchoud+ct_member@amazon.com"
    AccountName               = "CT Member"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail              = "arpchoud+ct_member@amazon.com"
    SSOUserFirstName          = "CT"
    SSOUserLastName           = "Member"
  }

  account_tags = {
    "ManagedBy" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Arpit"
    change_reason       = "Enroll Existing"
  }

  custom_fields = {
    group = "member"
  }
}

module "master" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "arpchoud+ct_master@amazon.com"
    AccountName               = "ArpchoudCTMaster"
    ManagedOrganizationalUnit = "Root"
    SSOUserEmail              = "arpchoud+ct_master@amazon.com"
    SSOUserFirstName          = "AWS Control Tower"
    SSOUserLastName           = "Admin"
  }

  account_tags = {
    "ManagedBy" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "Arpit"
    change_reason       = "Enroll Existing"
  }

  custom_fields = {
    group = "master"
  }

  account_customizations_name = "master"
}
