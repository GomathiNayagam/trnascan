#!/bin/bash

FILE=$(zenity --file-selection --title="Dear SMPL user, please select a FASTA file to scan for tRNAs" --file-filter=""*.fasta" "*.fa" "*.fna"")


if zenity --entry \
--title="Output file name" \
--text="Enter name of new profile:" \
--entry-text "NewProfile"
  then echo $?
  else echo "No name entered"
fi


path=$(dirname $FILE )

cd $path
 
tRNAscan-SE -B $FILE > $path/$?.tsv
