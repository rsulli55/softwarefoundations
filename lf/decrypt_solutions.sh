#!/usr/bin/env bash

files=("Basics.v" "Induction.v" "Lists.v" "Poly.v" "Tactics.v" "Logic.v" "IndProp.v"
       "Maps.v" "ProofObjects.v")

for file in "${files[@]}"; do
  printf "Decrypting %s\n" "${file}.gpg"
  gpg --batch --passphrase `cat pass.txt` -o "$file" --decrypt "$file.gpg"
done 
