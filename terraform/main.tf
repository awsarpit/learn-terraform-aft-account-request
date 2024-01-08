module "sandbox" {
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
    group = "sandbox"
  }

  account_customizations_name = "sandbox"
}
