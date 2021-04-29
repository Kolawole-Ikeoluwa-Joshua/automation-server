# My Jenkins Project

Building proficiency in jenkins by integrating jenkins with other tools


## Automating Database backup to AWS S3 using Jenkins 

##### prerequisite:

1. Jenkins automation server

2. AWS console access / CLI 

3. Docker Engine

##### Implementation (summary of steps):

1. Setup EC2 instances or a linux distro VM
2. Install docker
3. Install docker compose
4. Create compose file (Jenkins, remote-host, Database (MySql))
5. Create Dockerfile for custom Docker remote-host container
6. Update docker-compose file
7. Install SSH plugin, setup SSH credentials, configure SSH remote-host via Jenkins UI
8. Install MySQL client & AWS CLI  via remote-host
9. Create database 'testdb'
10. Create S3 Bucket on AWS
11. Create IAM user for Jenkins and assign S3 Policy/Policies
12. Create "db-script.sh" on remote-host container
13. Add sensitive credentials via Jenkins Dashboard
14. Create Build "String Parameters" via Jenkins Dashboard, for non-sensitive parameters in script
15. Execute job with build parameters via Jenkins Dashboard



