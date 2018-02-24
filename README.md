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
       $ terraform init  
       $ terraform apply -var-file="variables.tf"  
