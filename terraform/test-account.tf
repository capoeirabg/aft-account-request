# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "sandbox_account_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "capoeirabg+testaccount@gmail.com"
    AccountName  = "sandbox-account-01"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandbox"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "capoeirabg+testaccount@gmail.com"
    SSOUserFirstName = "capoeirabg"
    SSOUserLastName  = "test_account"
  }

  account_tags = {
    "ABC:Owner"       = "capoeirabg+testaccount@gmail.com"
    "ABC:Division"    = "TEST"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "Testing"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "Test"
  }

  change_management_parameters = {
    change_requested_by = "Atanas Lazarov"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

}

