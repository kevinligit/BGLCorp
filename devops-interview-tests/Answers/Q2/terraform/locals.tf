locals {
  users = {
    "user1" = {
      username = "jerome"
      groups   = ["group1", "group2"]
    },
    "user2" = {
      username = "marc"
      groups   = ["group2", "group3"]
    }
  }
}

module "iam_users_and_groups" {
  source = "./modules/iam_user_groups_membership"

  users = local.users
}
