####### Terraform installation 
-download terraform from https://www.terraform.io/downloads
-Extract the file 
-Once its extracted move it C:\Users\nitin.h.joshi\Music\MASTER SETUP FOR ENVS\terraform
-Open cmd and run #path  command to check path under for you machine
-run #SETX PATH  "C:\Users\nitin.h.joshi\Music\MASTER SETUP FOR ENVS\terraform"  "Also define under env variables "
-now close cmd and open cmd and che check for #terraform -version

##### kubectl installation 
-download from https://kubernetes.io/docs/tasks/tools/install-kubectl-windows/
-extract the file and move under C:\Users\nitin.h.joshi\Music\MASTER SETUP FOR ENVS\kubectl 
-run #SETX PATH  "C:\Users\nitin.h.joshi\Music\MASTER SETUP FOR ENVS\kubectl"  "Also define under env variables "
-check kubectl version by #kubectl version --client
###### Configuring terraform 
 
 -check poweshell version $psversiontable.psversion
 -download azure cli from https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli
 -az login .
###### 2nd approach spin ec2 ubuntu machine in aws
-azure cli https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-linux?pivots=apt 
#curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
-install and confihgure azure cli 
-az login 
-az account set --subscription <subscription id>
-installed helm and kubectl on ubuntu machine 
 
 ###### Instlattion of docker by script  
-curl -fsSL https://get.docker.com -o get-docker.sh
-sudo sh get-docker.sh



 ###### Kubernatics 
 -To get the credentials of the azure k8s cluster 
 #az aks get-credentials --resource-group <Resource-Group-Name> --name <Cluster-Name>
 To get the information regrading the nodes run #kubectl get nodes 
 To get the detailed information run #kubectl get nodes -o wide 
 #kubectl get namespaces "will show the name spaces present "  
 #kubectl get pods --all-namespaces "will show all the  workspaces its running"

 ##### Instalation of Helm (3)on K8s
-Open https://helm.sh/docs/intro/install/
-click on releases and it will take you to https://github.com/helm/helm/releases
-download the desired release , In my case I am downing on cli by using wget
-Unpack it (tar -zxvf helm-v3.0.0-linux-amd64.tar.gz)
-Find the helm binary in the unpacked directory, and move it to its desired destination (mv linux-amd64/helm /usr/local/bin/helm)
 
 ##### Instalation of spinnaker  - not working 
 To check the node status #kubectl describe node aks-agentpool-22092638-vmss000001 | less

Spinnaker requires persistent storage to store its pipleline and runtime data 
-There are two approach to install the spinnaker 1st helm charts 2nd Halyard
-for Halyard https://spinnaker.io/docs/setup/install/halyard/ (it requiers Debian/Ubuntu and macOS or you can run it on kdocker containers )

-helm repo list (to check existing repos )
-helm repo add spinnaker https://helmcharts.opsmx.com/   (we are using this repo to install spinnaker)
-helm install -n spinnaker spinnaker spinnaker/spinnaker 
helm install -n spinnaker(name of the name space) spinnaker(name of the helm install) spinnakerrepo that we have added)/spinnaker(name of the chart within the repo)

##### 2nd approach using docker container instalation of spinnaker 
#mkdir ~/.hal
#docker run --name halyard -v ~/.hal:/home/spinnaker/.hal -v .kube/config:/home/spinnaker/.kube/config -d gcr.io/spinnaker-marketplace/halyard:stable
#sudo docker logs -f halyard (to check logs)
-----Getting into the halyad container 
#docker exec -it halyard bash (get into the docker cvontainer )
kubectl cluster-info (to check we can connect with the aks cluster )
adding a k8s account #hal config provider kubernetes account add my-k8s --provider-version v2 --context $(kubectl config current-context)

------ now switch to your local machine 
Now we will install minio as its an object storage #Spinnaker needs the object storage to save the application data , we have to installa the minio in the same name space as of spinnaker 


