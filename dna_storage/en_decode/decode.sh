#!/bin/bash
# dna_encoding/decoding script

file_input=${1? Error no input file entered}

filename="${file_input%.*}"
decode_zipfile="data_decode-$filename.zip"


./dna_encoder_decoder --decode --n=12472 --k=9000 --numblocks=1 --input=../data/$file_input --output=../data/$decode_zipfile

cd ../data

unzip -j "data_decode-$filename"


