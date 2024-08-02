# Accuknox-Assessment-with-Solution
Accuknox-DevOps-Trainee-Practical-Assessment

# statement - 1
---------------
 Containerisation and Deployment of Wisecow Application on Kubernetes
 
 Step 1: Dockerization

- Setuped a Docker Containerization
  
       sudo apt-get update -y
  
       sudo apt-get install apt-transport-https ca-certificates curl software-properties-common
  
       curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  
       sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
  
       sudo apt-get update -y
  
       apt-cache policy docker-ce
  
       sudo apt-get install docker-ce
  
       sudo systemctl status docker
  
- Created a Dockerfile in the project repository's root directory.
- Build the Docker image
  
       sudo docker build -t shivasai4520/accu-wisecow:latest .
  
- Run the Dockerfile and pushed to the Dockerhub
  
       sudo run -itd -p 4499:4499 shivasai4520/accu-wisecow:latest
  
       sudo docker push shivasai4520/accu-wisecow:latest .
  
![image](https://github.com/user-attachments/assets/5e3e2627-8642-4a1d-81bc-587cc8a7d8fc)



  Step 2:Kubernetes Deployment

  - Setuped a minikube service
    
       curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
    
       sudo mv minikube-linux-amd64 /usr/local/bin/minikube
    
       sudo chmod +x /usr/local/bin/minikube
    
       minikube version
    
       curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
    
       sudo mv kubectl /usr/local/bin/kubectl
    
       sudo chmod +x /usr/local/bin/kubectl
    
       kubectl version --client
    
       minikube start
    
       kubectl cluster-info
    
  - Created Kubernetes manifest files in the repository
  - in that repository i manifested two yaml file those are deployment.yaml and service.yaml
   
       kubectl apply -f deployment.yaml
   
       kubectl apply -f service.yaml
  
  step 3:Continuous Integration and Deployment

  - Implemented a GitHub Actions workflow for automating the build and push of the Docker image to a container registry and for continuous deployment in repository

    
Step 4: TLS Implementation

- Obtain an SSL certificate and private key for your domain.
- Created a Kubernetes secret to store the certificate and key.
- Update the service manifest to use the secret for TLS communication.
  
       kubectl apply -f ingress.yaml
 
------------------------------------------------------------------------------------------------------------------------------------------------------
# statement - 2

1) System Health Monitoring Script
2) Application health checker Script
-------------------------------------
   i choose a python script to written for system health monitoring and application health checker and that are in repository
   
   ![shm](https://github.com/user-attachments/assets/1a0c09eb-b73e-47de-9000-83c6f9dbbc74)
