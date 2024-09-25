# Notes Links

https://intellipaat.com/blog/tutorial/devops-tutorial/ansible-basic-cheat-sheet/
https://medium.com/edureka/ansible-cheat-sheet-guide-5fe615ad65c0

1. Ansible is open source tool, that helps automate configuration management, orchestration and deployment
2. Ansible is configuration management tool that works well with IAAC for updating,managing and patching, whereas terraform is only IAAC, used to provision cloud resources. 
3. Ansible can creates multiple environments and work well with multi-cloud environment as well
4. key advantage is that it operates in an **agentless** manner, establishing connections between nodes using SSH.
5. Ansible is a **PUSH based mechanism**, It pushes the updated to all server from parent, whereas CHEF is a pull based config management tool, that pulls the config from all children and then updates it
6. Ansible connects nodes, PUSHES small programs called modules to the nodes, and then removes them when they are done.
7. Need to install only on master node/instance/vm  and connects to rest of the server using SSH. To do that we need to create all aws instances using the same key-pair for SHH. Can be made using diff key-pair as well, but it becomes more complex to access
8. Why Ansible over puppet/chef? **Advantages of Ansible**
   1. Ansible is **PUSH model**, which is easier
   2. It is **agentless**, no need to install agent on all servers, just on master node is sufficient
   3. **Good Support** for Linux and Windows 
   4. Easy to learn, **uses YAML**, for puppet need to learn a new language called puppet
   5. can **write your own ansible module** using python and share them using **Ansible Galaxy**
9. **Disadvantages**: Area of improvements
   1.  Does not work that well with windows as compared to linux
   2.  Debugging is not easy
   3.  some Performance issue with large number of serves
10. Need to ***enable password less authentication in slave servers***
11. **18 Most asked interview Ques**:
    1.  what lang Ansible is built on? -> Python
    2.  Does ansible support both Linux and Windows? -> Yes, uses SSH Protocol for Linux and Win RM Protocol to connect to windows
    3.  diff b/w ansible over pupet and chef or why ansible? -> ans in point 8
    4.  is ansible pull or push machenism? -> PUSH
    5.  language used by ansible for playbook? -> YAML
    6.  Does ansible support all cloud providers? -> Yes, only thing that matters is your public IP address, have SSH enabled, SSH should be allowed on machine or for windows WIN RM needs to be allowed
    
12. **Ansible Playbook**: create a playbook when u need to run multiple commands. No need to create playbook for small tasks, can directly use ansible commands called ansible adhoc commands
13. **Inventory files**: contains IP address of all the other servers