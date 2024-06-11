/*
You should also build a secondary module that calls your naming module. This parent module should intake a map which has the "base_name" as the key and the "resource_type" as the value. It should present each key/value pair in this map to your naming module.
*/
module "resource_name_module" {
  source          = "./name_module"
  
  base_name       = var.base_name
  resource_type   = var.resource_type
}



