#!/bin/bash

for i in manager worker1 worker2 worker3; 
do 
    echo "192.168.56.2   myregistry.com">test.txt && cat test.txt | vagrant ssh $i -c "sudo su && cat >> /etc/hosts"
    rm test.txt
done;
