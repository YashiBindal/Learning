# Linux commands

1. `sudo`: is substitute user do, not everyone can switch to root user, so this command gives root user privileges.
   
2. `su`: command to switch user
   - `sudo su -`: to go to root user
   - `su yashi`: to go to user 
3. `echo`: to print something on command line. It accepts an argument
   <echo {argument}>
   <echo Hello there>

4. `uptime`: for how long system is running since reboot and some more info. No arguments.
    <uptime>

5. `type` : to identify if a command is built-in or external
   <type echo>, <type mv>

6. `pwd`: present working directory
   <pwd>

7. `ls` : list directory
   <ls>
   `ls -l` : long list.. to get more details of a file
   `ls -a` : to view hidden directory. Hidden directories by preceded by single dot
   `ls -lt` : long list in order created, new to old
   `ls -ltr` : Long list in reverse order created, old to new, shows whether it a a directory or file and what permissions are given to user for it

8. `mkdir`: make directory
   <mkdir {directory_name}>
   <mkdir India China> : creates 2 directories named India and China
   <mkdir India/mumbai>: creates directory Mumbai inside India without going inside India
   <mkdir -p India/mumbai> : -p creates both parent(India) and child(Mumbai) directories

9.  `cd`: change directory
   <cd India>
   <cd /home/michel> : give absolute path
   <cd> : directly jump to home directory

10. `cd ..` : go to previous directory
   <cd ..>

11. `pushd` : add the current directory in a stack
    <pushd /etc>

12. `popd` : takes to the directory present on top of pushd stack
    <popd>

13. `mv` : to move files and folders from one location to other. Takes 2 arguments. can also be used to rename directories
    <mv {source directory} {destination directory}>
    <mv europe/morocco Africa/>
    <mv Asia/India/munbai Asia/India/Mumbai> : renaming method

14. `cp`: copy files from source to destination
    <cp {source} {destination}>
    <cp mumbai/city.txt Africa/Egypt/Cairo>
    `cp -r` : recursive option, to move all the files in a directory in one go

15. `rm` : to remove a directory
    <rm {directory name}>
    <rm India/Mumbai/city.txt>
    `rm -r`: recursively deletes all file in a directory

16. `cat` : concanate command, to display contents of a file
    <cat city.txt>
    `cat > {file_path}`: to add/replace contents in a file
    <cat > city.txt> : waits for user prompt to update value. use CTL+D to exit

17. `touch`: to create empty file
    <touch {file_path}>

18. `more` : to view files in a scrollable manner. Loads entire files at once. Not good to read large files
    <more {file_path}>
    - space: scrolls one screenfull page at a time
    - Enter: scrolls one line
    - b : scrolls backwards one screenfull at a time
    - / : to search text in file
    - press Q to exit
  
19. `less`: read files
    <less {file_name}>
    - up Arrow : scrolls display up one line
    - down Arrow : scrolls display down one line
    - / : search text   

20. `whatis` : Gives one line explanation of a command
    <whatis {commandname}>
    <whatis date>

21. `man` : detailed discription of a command
    <man {commandname}>
    <man date>

20 `--help` : a flag that provide details on how to use a command
    <date --help>

21. `apropos`: search through the man page names and description for instances of a keyword
    <apropos {keyword}>
    <apropos modpr> : return all commands in system that contains this keyword

22. `chsh` : to change shell. Takes password from user prompt
    <sudo chsh -s /bin/sh bob> : changes from current shell to bourne shell(sh)

23. `alias` : provides alias to a command
    <alias dt=date> : can use dt after this to get date

24. `history`: to check previous commands used
    <history>

25. `env` : to list all environment variables
26. `export` : to set env variable. This will set variable for current shell and any other process and programs started by the shell
    <export OFFICE=blazeclan>
    <OFFICE=blazeclan> : can set variable like this, but this will only apply variable within the shell and it will not be carried forward to any other process

27. `which` : to check path of a external command

28. `uname` : give the name of linux kernel used
    <uname>
    <uname -r>: outputs kernel version
    
29. `lscpu`: command to get details about linux cpu,like cpu architecture, threads, sockets , core
    
30. `lsmem`: to list available space in the system 
    <lsmem --summary>

31. `free`: command to get Ram and swap space on system
    <free -m>: -m to display result in MB, -g for gb, -k in kb
    <free -mh> : h provides data in human readable form

32. `dmesg`: display messages from kernel's ringbuffer. These are usually msgs generated during system boot
    <dmesg less> : to get specific output
    <dmesg | grep -i usb> : to get logs related to a specific keyword

33. <udevadm>: edevadm is utility tool for udev. 
    <udev info --query=path --name=/dev/sda5>: this queries udev database for device information
    <udevadm monitor>: prints received events for udev

34. `lspci`: list pci(peripheral component interconnect) devices like ethernet cards, raid controller, video cards , wireless adaptors
    
35. `lsblk`: lists info about block storage. The type disk refer to whole physical disk, and the type partition refers to reusable disk space carved out of physical disk. The major no identifies the type of device driver and minor differentiate similar type of devices
    
36. `lshw`: to extract detailed info on entire hardware configuration of the system
    
37. `sudo`: to run commands using root privileges
38. `runlevel`: shows the current runlevel mode of ubuntu. 5 means graphical mode, 3 means non-graphical. In systemD runlevels are called targets
39. `systemctl get-default`: returns default target for systemd. this commands look up file located at /etc/sysemd/system/default.target
40. `systemctl set-default multi-user.target`: to chng the target
41. `nproc`: to see no of cpus
42. `df -h`: disk usage
43. `top`: to get info of memory, cpu. disk...all at one place
44. `ps -ef`: to see all the processes running on a VM and get there process id
45. `grep`: to find specific process use grep: `ps -ef | grep "amazon"`
    - grep from a file : file name test
    - file contents :
    ```
        My name is Yashi
        My employee id is 1234
        I like painting
    ```
    - `grep name test`: this will get the lines with word name in it
46. `awk`: to find a substring from the string in grep use awk. It is a pattern scanning and processing language
    - `ps -ef | grep "amazon" | awk -F" " '{print2}'`
    - above command prints the 2nd column from the output table returned by grep 
    - awk with file 
    - `grep name test | awk -F" " '{print4}'` : Print the name of person "YASHI" 
  
47. `curl`: to send api request or to get files via links or retrive any info from the internet or to download packages and libraries. It shares the output to use, but does not download it
    - `curl <url of log file> | grep ERROR`
  
48. `wget`: same as curl, but downloads the output to system 
    - `wget <url>`
  
49. `find`: to find anything on the system i.e. entire file system using / as path or a particular folder by passing its path after find
    - `find / -name filename`: find the given file in / folder...that is whole system
    - ` sudo find / -name filename`: find with root privileges
  
50. `trap`: used to trap signals
    - any action you are performing using keyboard , or using commands ... its called a signal
    - A single is passed when we perform any action
    - `trap echo "don't use the CTRL+C" SIGINT`
    - here SIGINT stands for interrupt signal, linux has many such signals 

51. `wc -l`: to return number of words in a grep or file
52. `crontab`: like a alarm, it will execute script at the specified time
53. `vim`: to open a file for editing
54. `vim -r`: to open a file in read only mode
55. `jq`: to get info from a json
    -  `aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'`
    -  here [] are used because those values are lists in the json
56. `yq`: to get info from yaml