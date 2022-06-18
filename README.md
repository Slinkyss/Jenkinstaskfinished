
![Logo](https://i.imgur.com/RenDclL.png)


## ABOUT
Cloudformation project that setups a ec2 instance with jenkins skipping the setup phase with chosen plugins using Terraform, cloudformation, docker.

## Project 

![Pictures](https://i.imgur.com/3zrpNo7.png)

![Pictures](https://i.imgur.com/mcCSgld.png)

![Pictures](https://i.imgur.com/RQKj4Mk.png)

![Pictures](https://i.imgur.com/e4Dfs3d.png)




##  Tips
IF you want to change plugins list you need to edit  files/jenkins-plugins file.

IF you want to setup a your jenkins project with your keys and jobs. You need to download your credentials files and jobs files. Upload them to the s3 bucket and in the yaml file change the s3 link.

IF you want to use my job that updates cloudformation yaml file when pipeline catches a merge. You need to change the credentials with your github token and in pipeline settings add your githbub link.

