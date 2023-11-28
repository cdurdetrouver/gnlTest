#!/bin/bash

i=4

while [ $i -le 4092 ]
do
    rm "test${i}.txt"
    i=$((i+1))
done

echo "Fichiers supprimés avec succès de test4.txt à test4092.txt"
