#!/bin/bash
for i in $@; 
do 
    echo "Adding public key in $i"
    cat public.txt | vagrant ssh $i -c "cat >> ~/.ssh/authorized_keys"
done;
