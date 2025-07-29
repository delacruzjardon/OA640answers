resource "mongodbatlas_advanced_cluster" "atlas_cluster" {
  project_id               	= var.project_id
  name                     	= var.cluster_name
  mongo_db_major_version   	= var.mongodbversion
  cluster_type             	= "REPLICASET"
  replication_specs {
    num_shards       	= 1
region_configs { 
      electable_specs {
   	 instance_size = "M10"
   	 node_count    = 2
      }
      provider_name = "AWS"
      priority 	 = 7
      region_name   = "EU_WEST_1"
        	auto_scaling {
            	compute_enabled        	= false
            	compute_max_instance_size  = null
            	compute_min_instance_size  = null
            	compute_scale_down_enabled = false
            	disk_gb_enabled        	= false
        	}
    }

    region_configs { 
      electable_specs {
   	 instance_size = "M10"
   	 node_count    = 1
      }
      provider_name = "AZURE"
      priority 	 = 6
      region_name   = "EUROPE_NORTH"
        	auto_scaling {
            	compute_enabled        	= false
            	compute_max_instance_size  = null
            	compute_min_instance_size  = null
            	compute_scale_down_enabled = false
            	disk_gb_enabled        	= false
        	}
    }

    region_configs { 
      electable_specs {
   	 instance_size = "M10"
   	 node_count    = 2
      }
      provider_name = "GCP"
      priority 	 = 5
      region_name   = "EUROPE_WEST_2"
        	auto_scaling {
            	compute_enabled        	= false
            	compute_max_instance_size  = null
            	compute_min_instance_size  = null
            	compute_scale_down_enabled = false
            	disk_gb_enabled        	= false
        	}
    }
  }

  backup_enabled              	= true
  pit_enabled               	= true
	advanced_configuration {

    	javascript_enabled               	= false
    	minimum_enabled_tls_protocol     	= "TLS1_2"
    	no_table_scan                    	= true

	}
}
