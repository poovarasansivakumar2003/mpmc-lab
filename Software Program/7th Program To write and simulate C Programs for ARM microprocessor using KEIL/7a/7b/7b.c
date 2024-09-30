#include<lpc21xx.h>  

int main() {
    int a = 10;  
    int b = 1;   
    int xor, and, or, not;

    and = a & b;  // Bitwise AND
    or  = a | b;  // Bitwise OR
    xor = a ^ b;  // Bitwise XOR
    not = ~a;     // Bitwise NOT
	return 0;
}