#include "fast_double_parser.h"

extern "C" const char * fast_double_parser_parse_number(const char *str, double *x) {
	return fast_double_parser::parse_number(str, x);
}