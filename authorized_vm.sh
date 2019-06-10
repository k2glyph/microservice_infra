#!/bin/bash
for i in manager1 worker1 worker2 worker3; 
do 
    cat public.txt | vagrant ssh $i -c "cat >> ~/.ssh/authorized_keys"
done;
