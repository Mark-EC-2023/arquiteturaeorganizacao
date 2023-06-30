// Não sei se a questão quer o código em c ou assembly, então fiz os 2 
#include <stdio.h>

int main(){

  float x,y;
  scanf("%f%f",&x,&y);
  if(x > y){
    printf("\n%s\n", "x is greater than y");
  }else if(x == y){
    printf("\n%s\n","x and y are equal");
  }
  return 0; 
}
