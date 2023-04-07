resource "aws_iam_group" "group" {
  for_each = toset(["group1", "group2", "group3"])
  name = each.key
}

resource "aws_iam_user" "user" {
  for_each = var.users
  name = each.value.username
}

resource "aws_iam_user_group_membership" "user_group_membership" {
  for_each = {
    for user_key, user_value in var.users :
    user_key => {
      username = user_value.username
      groups   = user_value.groups
    }
  }

  user   = each.value.username
  groups = each.value.groups

  depends_on = [
    aws_iam_user.user,
    aws_iam_group.group
  ]
}
