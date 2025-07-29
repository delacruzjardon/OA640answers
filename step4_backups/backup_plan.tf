resource "mongodbatlas_cloud_backup_schedule" "production" {
  project_id           	= var.project_id
  cluster_name         	= var.cluster_name
  reference_hour_of_day	= 3
  reference_minute_of_hour = 45
  restore_window_days  	= 4
  policy_item_hourly {
	frequency_interval = 1
	retention_unit 	= "days"
	retention_value	= 4
  }
  policy_item_daily {
    	frequency_interval = 1
    	retention_unit  = "days"
    	retention_value = 14
  }
  policy_item_weekly {
    	frequency_interval = 4
    	retention_unit = "weeks"
    	retention_value = 3
  }
}
