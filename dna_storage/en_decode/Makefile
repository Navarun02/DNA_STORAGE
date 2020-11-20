
dna_encoder_decoder: dna_encoder_decoder.cpp
	g++ -O3 dna_encoder_decoder.cpp -o dna_encoder_decoder -std=c++11 -lboost_program_options
	#g++ -O3 dna_encoder_decoder.cpp -o dna_encoder_decoder -std=c++11 -lboost_program_options -L/Users/reinhardheckel/include/boost_1_55_0/stage/lib

test: test1

test1:
	./dna_encoder_decoder --n=12472 --k=9000 --encode --input=../data/data.zip --output=../data/data_encoded.txt
	./dna_encoder_decoder --disturb --input=../data/data_encoded.txt --output=../data/data_err_rm.txt
	./dna_encoder_decoder --decode --n=12472 --k=9000 --numblocks=1 --input=../data/data_err_rm.txt --output=../data/data_decoded.zip
	diff ../data/data.zip ../data/data_decoded.zip
