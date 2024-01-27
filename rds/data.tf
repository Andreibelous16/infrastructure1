data "terraform_remote_state" "this" {
  backend = "remote"

  config = {
    organization = "andreibelous"

    workspaces = {
      name = "vpc"
    }
  }
}