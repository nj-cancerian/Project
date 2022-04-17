Repo used = https://github.com/nj-cancerian/Calculator
1-Created jenkins server on Ec2 
2-On jenkins server installed maven plugin and confifured under the global settings 
3-Created a job A. SCM checkout B. Maven clean package Link for the -Url 3.111.32.156:8080/job/my-proeject/
4-Once job is created moved to another ec2 machine on which docker is installed by using transfer.sh script 
5-Run the docker build command to build the image docker build -t nitjoshi/app:update .
6- Use docker loging and then docker push command to push the image to docker central repo docker push nitjoshi/app:update
8-Now used main.tf file to build the eks environement 