/*
You should setup the "resource_type" to only allow the values of "virtual_machine", "key_vault", and "storage_account"
*/
variable "resource_type" {
  description           = "The type of the resource"
  type                  = string

  validation {
    condition           = contains(["virtual_machine", "key_vault", "storage_account"], var.resource_type)
    error_message       = "The resource_type must be 'virtual_machine', 'key_vault', or 'storage_account'."
  }
}
variable "base_name" {
  description           = "base_name"
  type                  = string
}