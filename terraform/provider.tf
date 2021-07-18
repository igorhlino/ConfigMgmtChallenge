   provider "google" {
      #path for GCP service account credentials
      credentials = "C:/Users/igorh/Downloads/configmgmtchallenge-8f2aacbe314a.json"
      # GCP project ID
      project = var.project
      # Any region of your choice
      region  = var.region
      # Any zone of your choice      
      zone    = var.zone
    }
     
  
  