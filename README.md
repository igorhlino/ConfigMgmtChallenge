# ConfigMgmtChallenge

# This is my try for made the most that i can to do this Challenge

# 1- First task is create the instance and running the startup commands that we need, to running the terraform code and create the instance is necessary a JSON file responsible to authenticate on the GCP Project, without this file is only possible to running this directly on Cloud Shell. All the terraform files that we need is on the dir Terraform. On IDE with local terraform installed or Cloud Shell on GCP we execute the commands below to create the instance:
# terraform init  // to initialize terraform and connect to the cloud
# terraform plan // to verify what the code will do
# terraform apply / to create the instance

# 2 - The startup script (startup.sh) will do all the installations that we need and do the commands to start the containers. This file will be on the local machine that will run the Terraform and is called on main.tf Terraform file.

# 3 - I have a difficult trail with the following line of .go file:
# http.ListenAndServe("127.0.0.1:8080", nil)
# because as i understand, only inside connections will be accepted and in the beggining, the only way that i found to running the code is inside of the container using "docker exec" 
# For this code works without any other tool the way that i found is modify that line from .go file above to:
# http.ListenAndServe(":8080", nil)
# After that i start to thinking that maybe i would need to have a nginx intercepting all the connections of Docker, i create the yaml file for the NGINX and the configurations but i don't have success making the application work with that.

# 4 - The next part that i would needed is see how to use Ansible and create the file to interate with docker and update the binary if needed, i didn't reach this part.
