# Syntax for is else in scripting 
# $: is used to refer to variables
# -lt is less than operator
# Arithmetic Operators in bash are:  ‘-eq’, ‘-ne’, ‘-lt’, ‘-le’, ‘-gt’, or ‘-ge’.
# String operators are: "==", "!=", "<", ">"
a=2
b=5 

if [$a -lt $b]
then 
    echo "a is smaller than b" 
else
    echo "a is greater than b"
fi