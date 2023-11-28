#!/bin/bash
i=4

while [ $i -le 4092 ]
do
    touch "test${i}.txt"
    echo "Contenu du fichier test${i}.txt" > "test${i}.txt"
    i=$((i+1))
done

echo "Fichiers créés avec succès de test4.txt à test4092.txt"