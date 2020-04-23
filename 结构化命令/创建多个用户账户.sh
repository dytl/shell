#!/bin/bash
input="users.csv" 
while IFS=',' read -r userid name 
do
    echo "adding $userid"
    useradd -c "$name" -m $userid 
done < "$input"

#users.csv内容
#rich,Richard Blum 
#christine,Christine Bresnahan 
#barbara,Barbara Blum 
#tim,Timothy Bresnahan