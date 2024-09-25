## To install on a linux/uubuntu machine

1. `sudo apt update / sudo yum update`
2. `sudo apt install ansible / sudo yum install ansible`
3. `ansible --version`

## connect master server to target using password less authentication

1. `ssh <private_ip_of_target>` : this asks for password
2. `shh-copy-id <private_ip_of_target>` : this is easiest to connect but sometimes it does not have enough permissions
3. Suggested method:
   1. login to master server: `ssh -i "linux.pem" ec2-user@ec2-3-27-184-166.ap-southeast-2.compute.amazonaws.com`
   2. do `ssh-keygen` on master server : generates private public RSA key for you. Path you can mention, else default is like  /home/ec2-user/.ssh/id_rsa.pub
   3. copy the public key : ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC/fPo8Mpbdu9aF5nwS1Nm6l2io1qdccuAJvuRl/nShC9LLVgwPU6XBQjGn2nC9872l3mXQYLE6mZ8+u9pSxILNndQmjLwqwQM8zb6PdI4spTNNEEQCYqi9VTQXYgVWgwdZ+BaD/RBemmunA33wNc51WOV6nP6LbeY4ejEfXHuz68EP/dUsceW4dmdO7DaFuxvCUIGbkzfSJX0ZXhCdCsVTAmQ1DjvJSN5LmkPctMBE1feFTXL3KSFTRlKyeGdzUErBjEWOLYzbDiwwCJnOKuk1ymBuxgBP3fwUpCMwAwIDT2Vv7zIJmhBbRK236+DWKixorsFpYHGsVmDEQCQ1aIbj5jETG+5MxdouXvYvb5eEtpH3wnW4eYhq1FmENpIMuKXNTATgFPWSMj0S+Qss5sWf15WngZWHVcydflcrjSB1nnyzM+S5+pUC7tnw55Pa/I1+zELnJIZnVm49/DhhzQmApbmRrYZaHU4thpcI/addv4/d4o0zTrNVSqkMZUbUIws= ec2-user@ip-172-31-8-217.ap-southeast-2.compute.internal
   4. connect to target server : `ssh -i "linux.pem" ec2-user@ec2-54-252-182-194.ap-southeast-2.compute.amazonaws.com`
   5. do `ssh-keygen` on target
   6. On target server open the **authorized_keys** file created by ssh-keygen or create one and paste the above copied public RSA Key of master in it by using `vim /home/ec2-user/.ssh/authorized_keys` 
   7. on the master server run the command `ssh <private_ip_of_target>`, this will now connect the target server to master without asking for password

## Ansible ADHOC commands

1. to run ansible adhoc commands we user **ansible** keyword
2. `ansible -i inventory all -m "shell" -a "touch devopsclass"`
   - this commands create a file named devopsclass in the all the target servers whose ip is mentioned in the inventory file.
   - if instead of all, we pass the specific IP of target, then the file will be created in only that server
   - **-i** for location of inventory file, **-m** stands for module and **-a** stands for arguments(command) to run using that module
   - ansible has many modules, and we need to use document to implement them

3. **Grouping servers in inventory files**: by adding brackets you can group servers
        ```
        [dbservers]
        136.3.45.24
        [webservers]
        127.34.56.28
        ```
   - to run command on one group : `ansible -i inventory webservers -m "shell" -a "touch devopsclass"`

## Ansible Playbook

1. Written in yaml format: ansible_playbook.yaml
2. to run ansible playbook commands we use **ansible-playbook** keyword
3. `ansible-playbook -i inventory ansible_playbook.yaml`
4. **-v**: stands for verbosity, vy metioning different counts of v, we will get different logs, like **vvv** stands for debug mode `ansible-playbook -vvv -i inventory ansible_playbook.yaml`

## Ansible Roles

1. It is an efficient way to write complex playbooks
2. command used is : `ansible-galaxy role init kubernetes` , here kubernetes is role name, it can be anything
3. it creates various files and folder, that helps in proper readability
4. it has folders like Readme, tasks, handlers, templates, files, default, vars, meta
5. Task folder is used to write all the tasks of playbook
6. Meta to write metadata about playbook and licenscing information
7. Defaults to store default variables, Vars and group vars for variables
8. Test to write unit test cases
9. Handlers to handle exceptions
10. Files to store certificates, index.html 
11. Template is for basic templating