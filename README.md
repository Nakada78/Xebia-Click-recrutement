# Test build and deploy in continuous click Count application

[![Build Status](https://travis-ci.org/Nakada78/Xebia-Click-recrutement.svg)](https://travis-ci.org/Nakada78/Xebia-Click-recrutement)

liens vers travis CI: https://travis-ci.org/Nakada78/Xebia-Click-recrutement

SRC: 
  - code of application

Ansible: 
  - install redis and nginx
  - deploy code on environement staging or Production

Terraform:
  - Build infrastructure staging and production on AWS EC2
  pour exécuter terraform installer terraform, aller dans le directory terraform et exécuter de de la façon suivante :   
       $ cd terraform  
       $ terraform init
       $ terraform apply -auto-approve
	   
Packer:
  - Create AMI Ubuntu on AWS
  $ packer build  -var aws_access_key="ACCESS_KEY" -var aws_secret_key="SECRET_KEY" Ubuntu-Xebia.json
