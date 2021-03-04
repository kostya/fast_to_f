.PHONY: package
package: ./fast_to_f.o

./fast_double_parser.h:
	wget https://raw.githubusercontent.com/lemire/fast_double_parser/master/include/fast_double_parser.h

./fast_to_f.o: ./fast_double_parser.h
	gcc -std=c++11 -O3 fast_to_f.cpp -I./ -c -o fast_to_f.o -fno-threadsafe-statics

.PHONY: clean
clean:
	rm fast_double_parser.h fast_to_f.o
