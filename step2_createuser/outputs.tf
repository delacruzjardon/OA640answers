output "connection_strings" {
  value = mongodbatlas_cluster.atlas_cluster.connection_strings[0].standard_srv
}
output "user_password" 	{
  sensitive = true
  value = mongodbatlas_database_user.user-1.password
}
