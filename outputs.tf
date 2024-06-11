/*
The Parent Module should reflect all the outputs of the child module and allow for additional outputs if the child module outputs are expanded in the future without further modification to the parent.
*/

output "naming_results" {
  value         =  module.resource_name_module.result 
}
