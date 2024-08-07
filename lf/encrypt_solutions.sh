#!/usr/bin/env bash

files=("Basics.v" "Induction.v" "Lists.v" "Poly.v" "Tactics.v" "Logic.v" "IndProp.v"
       "Maps.v" "ProofObjects.v" "IndPrinciples.v" "Rel.v" "Imp.v" "ImpParser.v"
       "ImpCEvalFun.v" "AltAuto.v")

for file in "${files[@]}"; do
  printf "Encrypting %s\n" ${file}
  gpg --batch --passphrase `cat pass.txt` -o "$file.gpg" --symmetric $file
done 

