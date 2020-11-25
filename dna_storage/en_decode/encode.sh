#!/bin/bash
# dna_encoding/decoding script

file_input=${1? Error no input file entered}

filename="${file_input%.*}"
file_zip="$filename-compressed.zip"

cd ../data

zip $file_zip $file_input

cd ../en_decode

data_encoded="encoded.txt"

./dna_encoder_decoder --n=12472 --k=9000 --encode --input=../data/$file_zip --output=../data/$data_encoded
