


#Module Block
module "nastorage_module" {
  source = "./Lab01/storage_account"
}

#Outputs Block
output "storage_account_id" {
  value = module.nastorage_module.storage_account_id
}