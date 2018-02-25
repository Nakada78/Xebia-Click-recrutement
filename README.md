# Test build and deploy in continuous click Count application

[![Build Status](https://travis-ci.org/Nakada78/Xebia-Click-recrutement.svg)](https://travis-ci.org/Nakada78/Xebia-Click-recrutement)

liens vers travis CI: https://travis-ci.org/Nakada78/Xebia-Click-recrutement  

Schéma fonctionnel : 
![Image of Yaktocat](https://image.noelshack.com/fichiers/2018/08/7/1519586217-untitled-diagram-2.jpg)  

Configuration Travis CI : .travis.yml     
  
```
language: java  
jdk:  
  - oraclejdk8  
  
jobs:  
  include:  
    - stage: package  
      install:  
        - mvn clean package  
    - stage: deploy staging  
      install:  
        - sudo apt-get update -qq  
        - sudo apt-get install -yq python-pip python-dev ssh  
        - sudo pip install ansible  
      script:   
        - sudo ansible-playbook -i ansible/staging/inventory ansible/playbook.yml    
        - sudo chmod +x tests/test.sh && ./tests/test.sh 52.47.90.234    
    - stage: deploy prod  
      install:  
        - sudo apt-get update -qq  
        - sudo apt-get install -yq python-pip python-dev  
        - sudo pip install ansible  
      script:   
        - sudo ansible-playbook -i ansible/production/inventory ansible/playbook.yml       
	- - sudo chmod +x tests/test.sh && ./tests/test.sh 35.180.39.255   
```

SRC: 
  - code of application

Ansible:  
  - install dependencies  
  - install redis and nginx  
  - deploy code on environement staging or Production

Terraform:
  - Build infrastructure staging and production on AWS EC2  
  pour exécuter terraform, installer terraform, aller dans le directory terraform et exécuter le code de de la façon suivante :   
       $ cd terraform  
       $ terraform init
       $ terraform apply -auto-approve
	   
Packer:
  - Create AMI Ubuntu on AWS
  $ packer build  -var aws_access_key="ACCESS_KEY" -var aws_secret_key="SECRET_KEY" Ubuntu-Xebia.json
