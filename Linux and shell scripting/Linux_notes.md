# Linux Shell

- linux command line interface
- tool to directly interact with the OS
- each user in system have their own unique home directory
- home directory is represented by ~ symbol
- some commands need arguments, some don't
- 2 types of commands:
  - **Internal or Built-in**: echo, cd, pwd, set etc. Part of the shell itself, comes along with it. There are around 30 such commands
  - **External**: mv, date, uptime, cp, etc. These are binary program or scripts that come preinstalled with the distributions package manager or can be created or installed dby the user
- to Identify type of command use `type command`: `type echo`, `type mv`
- a command can have arguments, options and flags
- `absolute path` : location path starting from root directory eg. `/home/yashi/asia`
- `relative path` : passing normal path
- to check shell being used : `echo $SHELL`
- to check home directory of user : `echo $HOME`
- bash shell supports auto-completion feature   
- use **$** to refer to environment variables
- to make variable available over subsequent reboots and login, stor the nev variable in /.profile or /.pam_environment files
- need to set path variables for external commands for them to run properly `export PATH=$PATH:/opt/obs/bin`
- update BASH PROMPT to user name using PS1 variable along with various flags
  `echo 'PS1="[\d]\u@\h:\w$"' ` ~/.profile>
- add variable using cmd to .profile file
  `echo 'export MY_VARIABLE="example_value"' ` ~/.profile>
- add command alias to /.profile
  `echo 'alias ll="ls -l"' ` ~/.profile>
  `echo 'alias up=uptime'` /home/bob/.profile>
- Linux boot sequence
  - BIOs POST--> Boot loader(GRUB2) --> Kernel Initialization--> INIT Process(systemd)
  - 1. POST stands for power on self test: ensure that hardware devices attached are functioning correctly, if POST fails, that means system is inoperable and system will not proceed to next step
  - 2. bootloader is present in /boot 
  - use command ` ls -l /sbin/init` to check the type of INIT process
- ***#!/***: shebang: followed by bin/bash or ksh or sh or dash, `#!/bin/bash` or `#!/ksh`
  - bash is most commonly used and popular
  - /bin/sh is also used for bash because /sh links to /bash, but nowdays /dash is default for /sh sometimes
  - previously /sh and /bash were same , because /sh redirectly to /bash by linking by deafault but not the same case now
- **|**: pipe is used to integrate two commands, by sending output of the 1st one to 2nd 
  - ***below logic asked in interviews***
  - pipe does not work with linux system default commands like `date`, because they send output to stdin, from which some other commands after pipe cannot read
  - The reason why `date | echo “date is”` doesn’t work is that we are trying to pipe a string to a command that doesn’t accept input from standard input (stdin). The pipe symbol “|” takes the output of the command on its left and pipes it as input to the command on its right. In this case, “date” outputs a string representing the current date and time, but “echo” doesn’t accept input from stdin, so it just prints “date is” instead of the output of “date”. 
  - so a command like `date | echo "date is:"` will only output "Today is:" and not the actual date
  - To fix this, you can use command substitution instead of piping like this:`echo "date is $(date)"`
- **awk vs grep**: grep will return the whole line containing the search string, but using awk we can pull out a specific string/column from the greped output as well 
- **set -e**: to exit the script when an error occurs, else whole script will be ran
- `crontab`: like a alarm, it will execute script at the specified time