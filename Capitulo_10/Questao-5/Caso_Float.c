// Correção: 0,5.
#include <stdio.h>
int main() {
float x,y;
printf("\n%s", "Enter a float for x: ");
scanf_s("%f", &x);
__asm {
fld x
fstp y
 }
printf("\n%s%6.4f\n\n", "The float in y is: ", y);
return 0;
} 
