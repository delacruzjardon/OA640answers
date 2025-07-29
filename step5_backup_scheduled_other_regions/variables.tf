variable "public_key" {
  type    	= string
  description = "Public Programmatic API key to authenticate to Atlas"
}
variable "private_key" {
  type    	= string
  description = "Private Programmatic API key to authenticate to Atlas"
}
variable "project_id" {
  type    	= string
  description = "The MongoDB Atlas Project ID"
}
variable "cluster_name" {
  type    	= string
  description = "The MongoDB Atlas Cluster Name"
}
variable "cloud_provider" {
  type    	= string
  description = "The cloud provider to use, must be AWS, GCP or AZURE"
}
variable "region" {
  type    	= string
  description = "MongoDB Atlas Cluster Region, must be a region for the provider given"
}

variable "region2" {
  type    	= string
  description = "MongoDB Atlas Cluster Region, must be a region for the provider given"
}
variable "mongodbversion" {
  type    	= string
  description = "The Major MongoDB Version"
}
variable "dbuser" {
  type    	= string
  description = "MongoDB Atlas Database User Name"
}
variable "dbuser_password" {
  type    	= string
  description = "MongoDB Atlas Database User Password"
}
variable "database_name" {
  type    	= string
  description = "The database in the cluster to limit the database user to, the database does not have to exist yet"
}
variable "ip_address" {
  type    	= string
  description = "The IP address that the cluster will be accessed from, can also be a CIDR range or AWS security group"
}

variable "point_in_time_utc_seconds" {
  type    	= number
  description = "point_in_time_utc_seconds"
}
