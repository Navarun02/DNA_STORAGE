#!/bin/bash
# dna_encoding/decoding script

file_input=${1? Error no input file entered}

filename="${file_input%.*}"
file_zip="$filename-compressed.zip"

cd ../data

zip $file_zip $file_input

cd ../en_decode

data_encoded="data_encoded$filename.txt"
inputpath="../data/$file_zip"
outputpath="../data/$data_encoded"
./dna_encoder_decoder --n=12472 --k=9000 --encode --input="$inputpath" --output="$outputpath"