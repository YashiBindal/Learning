## SHell Scripting

1. **echo**: as a print statement in shell script
2. **./filename** or **sh filename**: ./ to run any executable file, sh to run executable file ending with .sh 
3. **chmod**: to manage permissions to linux users
   - manages permission for root, group and current users
   - `chmod 777 filename`: permission to everyone
   - chmod numbers:
     - 4: for read permissions
     - 2: for write permissions
     - 1: for execute permissions
     - you can sum these to provide required permissions
4. **#**: hash is used to comment in shell script
5. `set -x`: debug mode of shell script. Good practice to use this instead of echo. It prints command itself before its output
6. **scripting good practices**:
    - use debug mode for debugging
    - use echo statements for better understanding
    - always write metadata info inside script like author, date version , etc
7. `set -e`: to exit script if an error occurs, usually useful when script needs to be run sequentially and dependent on previous command. In such case if error occurs its good to exit script  or in very big scripts, very error msg may be skipped while reading response. So it is a good practice to add this in all your scripts
8. `set -o pipefail`: set -e does not work with pipe command...it only checks the last command of pipe and if that runs, no error is thrown. So to catch error in pipe commands we need to use set -o command