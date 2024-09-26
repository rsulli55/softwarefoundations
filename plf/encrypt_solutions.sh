#!/usr/bin/env bash

files=("Equiv.v" "Hoare.v")

for file in "${files[@]}"; do
  printf "Encrypting %s\n" ${file}
  gpg --batch --passphrase `cat pass.txt` -o "$file.gpg" --symmetric $file
done 

