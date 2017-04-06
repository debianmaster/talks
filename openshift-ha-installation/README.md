

#Preso
https://github.com/debianmaster/talks/blob/master/openshift-ha-installation/presentation.pdf

#Video    
https://youtu.be/rxtQs_o-ZUM    

#Sample inventory file used in this example
https://github.com/debianmaster/openshift-the-hard-way/blob/master/hosts.example.yml


#Steps performed.
```sh
gcloud compute instances list 

gcloud config set compute/region asia-east1

gcloud config set compute/zone asia-east1-a

gcloud compute networks create openshift --mode custom

gcloud compute networks subnets create openshift-subnet \
  --network openshift \
  --range 10.240.0.0/24
  

gcloud compute firewall-rules create allow-internal \
  --allow tcp,udp,icmp \
  --network openshift \
  --source-ranges 10.240.0.0/24,10.200.0.0/16
  
 
gcloud compute firewall-rules create allow-external \
  --allow tcp:22,tcp:3389,tcp:6443,tcp:8443,icmp \
  --network openshift \
  --source-ranges 0.0.0.0/0  
  
  
gcloud compute firewall-rules create allow-healthz \
  --allow tcp:8080 \
  --network openshift \
  --source-ranges 130.211.0.0/22 
  

gcloud compute firewall-rules create allow-http-https   --allow tcp:8080,tcp:443   --network openshift   --source-ranges 0.0.0.0/0

gcloud compute firewall-rules list --filter "network=openshift"

gcloud compute addresses create openshift --region=asia-east1

gcloud compute addresses list openshift

gcloud compute instances create "master1" --zone "asia-east1-a" --machine-type n1-standard-1 \
  --image "centos-7-v20170223" --image-project "centos-cloud" --boot-disk-size "20" \
  --boot-disk-type "pd-ssd" --boot-disk-device-name "master1"  \
  --private-network-ip 10.240.0.10  --subnet openshift-subnet
  

gcloud compute instances create "master2" --zone "asia-east1-a" --machine-type n1-standard-1 \
  --image "centos-7-v20170223" --image-project "centos-cloud" --boot-disk-size "20" \
  --boot-disk-type "pd-ssd" --boot-disk-device-name "master2"  \
  --private-network-ip 10.240.0.11  --subnet openshift-subnet
  
  
gcloud compute instances create "master3" --zone "asia-east1-a" --machine-type n1-standard-1 \
  --image "centos-7-v20170223" --image-project "centos-cloud" --boot-disk-size "20" \
  --boot-disk-type "pd-ssd" --boot-disk-device-name "master3"  \
  --private-network-ip 10.240.0.12  --subnet openshift-subnet  

 gcloud compute instances create "infra1" --zone "asia-east1-a" --machine-type n1-standard-1  \
  --image "centos-7-v20170223" --image-project "centos-cloud" --boot-disk-size "20" \
  --boot-disk-type "pd-ssd" --boot-disk-device-name "infra1"  \
  --private-network-ip 10.240.0.51  --subnet openshift-subnet   
  

 gcloud compute instances create "infra2" --zone "asia-east1-a" --machine-type n1-standard-1  \
  --image "centos-7-v20170223" --image-project "centos-cloud" --boot-disk-size "20" \
  --boot-disk-type "pd-ssd" --boot-disk-device-name "infra2"  \
  --private-network-ip 10.240.0.52  --subnet openshift-subnet  
  
  
gcloud compute instances create "node1" --zone "asia-east1-a" --machine-type n1-standard-1  \
  --image "centos-7-v20170223" --image-project "centos-cloud" --boot-disk-size "20" \
  --boot-disk-type "pd-ssd" --boot-disk-device-name "node1"  \
  --private-network-ip 10.240.0.75  --subnet openshift-subnet  


> Copy cat ~/.ssh/id_rsa.pub   to metadata
gcloud compute copy-files ~/.ssh/id_rsa master1:~/
gcloud compute ssh master1
sudo yum install -y centos-release-openshift-origin
sudo yum install -y origin-clients
sudo yum install -y origin
ssh-agent $SHELL
ssh-add ~/id_rsa
```
