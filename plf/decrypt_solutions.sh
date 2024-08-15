#!/usr/bin/env bash

files=("Equiv.v")

for file in "${files[@]}"; do
  printf "Decrypting %s\n" "${file}.gpg"
  gpg --batch --passphrase `cat pass.txt` -o "$file" --decrypt "$file.gpg"
done 
