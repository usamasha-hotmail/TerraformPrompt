/*2. If the resource_type is "virtual_machine" you should take the "base_name" and append "vm-" to the front of it and "-00" to the back. If the base name and and values you're appending are greater than 15 characters you should truncate the "base_name" only in order to be 15 characters when combined with your additional characters. Note that the base_name can be greater than 15 characters.
3. If the resource_type is "key_vault" you should append "kv-" to the front of "base_name" and then set all characters to lower case.
4. If the resource_type is "storage_account" you should append "sa" to the front of "base_name and then remove all "-" from the name and then set all characters to lower case
*/
locals {
    modified_base_name = var.resource_type == "virtual_machine" ? "vm-${substr("${var.base_name}", 0, 9)}-00" : var.resource_type == "key_vault" ? "kv-${lower(substr("${var.base_name}", 0, 12))}": var.resource_type == "storage_account" ? "sa${substr(replace(lower(var.base_name), "-", ""),0,13)}" : var.base_name
}