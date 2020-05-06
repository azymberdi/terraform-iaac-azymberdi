module "app1" { 
source = "./module" 
region = "us-east-1"
} 

module "wordpress" { 
source = "./module" 
region = "sa-east-1"
} 

module "london" { 
source = "./module" 
region = "eu-west-2"
} 

module "frankfurt" { 
source = "./module" 
region = "eu-central-1"
} 

