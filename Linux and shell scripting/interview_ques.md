### 1. What is a Sticky Bit in Linux?

The sticky bit is a special permission that can be set on directories. When the sticky bit is set on a directory, only the owner of the directory, the owner of the file, or the root user can delete or rename the files within that directory.

#### Example

To set the sticky bit on a directory:

```bash
chmod +t /path/to/directory
```

To check if the sticky bit is set:

```bash
ls -ld /path/to/directory
```

You will see a `t` at the end of the permissions:

```
drwxrwxrwt 2 root root 4096 Jul  1 12:34 /path/to/directory
```

### 2. How Do We Verify if Our Shell Script is Executed Successfully?

The exit status of a command can be checked using the special variable `$?`. A zero exit status (`0`) indicates success, while a non-zero value indicates failure.

#### Example

```bash
#!/bin/bash

your_command

if [ $? -eq 0 ]; then
    echo "Command executed successfully"
else
    echo "Command failed"
fi
```

You can also use the `set -e` option at the beginning of your script to exit the script immediately if any command returns a non-zero status.

### 3. What is the Flag to Check if a File is Empty or Not?

The `-s` flag in the test command (`[ ... ]`) checks if a file is not empty.

#### Example

```bash
#!/bin/bash

file="path/to/yourfile"

if [ -s "$file" ]; then
    echo "File is not empty"
else
    echo "File is empty"
fi
```

### 4. What is a Positional Parameter?

Positional parameters are variables that hold the arguments passed to a shell script or function. They are referenced using `$1`, `$2`, `$3`, etc., where `$1` is the first argument, `$2` is the second, and so on. `$0` refers to the script or command itself.

#### Example

```bash
#!/bin/bash

echo "First argument: $1"
echo "Second argument: $2"
```

### 5. What is Command Substitution?

Command substitution allows you to capture the output of a command and use it as an argument in another command. It can be done using backticks (\`) or `$(...)`.

#### Example

Using backticks:

```bash
current_date=`date`
echo "Current date is $current_date"
```

Using `$(...)`:

```bash
current_date=$(date)
echo "Current date is $current_date"
```

### 6. How Do You Set Crontab?

Crontab is used to schedule commands to be executed periodically. You can edit the crontab file for your user by running:

```bash
crontab -e
```

This will open an editor where you can add your cron jobs. The format is:

```
* * * * * command_to_be_executed
```

The fields represent:

1. Minute (0 - 59)
2. Hour (0 - 23)
3. Day of month (1 - 31)
4. Month (1 - 12)
5. Day of week (0 - 7) (Sunday is 0 or 7)

#### Example

To run a script every day at 2 AM:

```bash
0 2 * * * /path/to/your_script.sh
```

### 7. How Will Your .sh Script Configured in CRONTAB Run When the System is Restarted?

To ensure a script runs at startup, you can use the `@reboot` cron directive.

#### Example

To add a script that runs at system startup:

```bash
@reboot /path/to/your_script.sh
```

This entry in the crontab will execute `your_script.sh` every time the system boots up.

### Summary

1. **Sticky Bit**: Special permission on directories preventing users from deleting or renaming files they do not own.
2. **Verify Script Execution**: Check `$?` for the exit status of the last command.
3. **Check If File is Empty**: Use `-s` flag.
4. **Positional Parameter**: Variables holding script arguments, accessed via `$1`, `$2`, etc.
5. **Command Substitution**: Capturing command output using `$(...)` or backticks.
6. **Set Crontab**: Use `crontab -e` to schedule jobs.
7. **Run Script at Startup**: Use `@reboot` in crontab.

### --------------------------------------------------------------

1. List some of the commonly used shell commands ?
   -  `ls, pwd, history, chmod, top, touch, vim`
2. Write a simple shell script to list all processes : 
   - `ps -ef`
   - `ps -ef | awk -F" " '{print2}'`  : to print only processId
3. Write a script to print only errors from a remote log 
   - `curl <url of log file> | grep ERROR`
4. Write a shell script to print numbers divided by 3 & 5 and not 15: in `samplescript.sh`
5. Write a script to print number of "S" in Mississippi: in `samplescript.sh`
6. How will you debug the shell script? 
   - `set -x`
7. What is crontab in Linux? Can you provide an example of usage?
   - to schedule execution of commands
   - can be set by editing file using `crontab -e`
8. How to open a read-only file?
   - `vim -r`
9.  What is a difference between soft and hard link?
    - hard links: used to create a copy or mirror a file, even if file is detailed from memory, it can be accessed using hard links
    - soft links: points to the same location of a file, if one is deleted , both files get deleted
10. What is a difference between break and continue statements ?- same as python
11. What are some disadvantages of Shell scripting?
12. What a different types of loops and when to use?
13. Is bash dynamic or statically typed and why?
14. Explain about a network troubleshooting utility?
    - `traceroute`
15. How will you sort list on names in a file ?
    - `sort` command
16. How will you manage logs of a system that generate huge log files everyday?
    - logrotate