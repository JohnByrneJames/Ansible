# Setting up a EM2 Instance on AWS and then creating an AMI that can be launched at any time, all using Ansible!

Ansible is a configuration management tool that is a simple automation tool that allows you to configure machines remotely, we previously did it on our local machine using Vagrant. Then next step we need to take is to use our Ansible controller to create these machines on AWS using their EC2 instances and then create them each into AMIs.

AMI stands for _**Amazon Machine Image**_, they are a cost effective way to store a machines state. Instead of having it constantly taking up space and money on the cloud as a running/ stopped instance we can create it as an image and then spin it up again at any time it is needed.

Before you attempt this, please make sure you have followed the [Ansible_Set_Up](Ansible_Set_Up.md) as it explains how the previous steps work and are functioning up to now. If you just want to have it working for yourself, then please refer to the end of the file to get a quick setup.

~~ Steps Recorded ~~

_**Create SSH Key to connect to the EC2 instance**_

```bash
ssh-keygen -t rsa -b 4096 -f ~/.ssh/my_aws
```

_**Create Ansible directory structure**_


```bash
mkdir -p AWS_Ansible/group_vars/all/
cd AWS_Ansible
touch aws_pb.yml
```

_**Create Ansible Vault File to store the AWS Access and Secret Keys**_

**vagrant** as password for vault

