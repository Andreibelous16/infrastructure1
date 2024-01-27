
#Pulls VPS information
data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    organization = "andreibelous"

    workspaces = {
      name = "vpc"
    }
  }
}

# Pulls DB information
data "terraform_remote_state" "rds" {
  backend = "remote"

  config = {
    organization = "andreibelous"

    workspaces = {
      name = "rds"
    }
  }
}