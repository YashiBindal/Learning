#!/bin/bash
#script to print numbers divisible by 3 or 5 but not 15 in a range of 100\
for i in {1..100}; do
if ([`expr $i % 3` == 0] || [`expr $i % 5` == 0]) && [`expr $i % 15` == 0];
then 
    echo $i
fi;
done


#script to print s in mississippi
count=0
for letter in in {mississippi}; do
if [$letter== 's']
then $count+=1
fi;
done
echo $count

#better approach using linux commands
x='mississipi'
grep -o "s" <<<"$x" | wc -l
#here -o stands for only, so it means grep only letter s 
# <<< this is a input symbol, it says take input from whatever is mention after it, in this case its variable x
# wc-l commands count he number of letters return by grep command