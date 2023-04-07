variable "users" {
  type = map(object({
    username = string
    groups   = list(string)
  }))
  default = {}
}
