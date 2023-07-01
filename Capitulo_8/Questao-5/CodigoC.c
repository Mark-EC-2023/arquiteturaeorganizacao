#include <stdio.h>

int main(){
    int Array1[20] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20};
    int Array2[20];

    // Guardando os inteiros de 1 a 20 no array1 
    for(int i=0;i<20;i++){
        Array2[i] = Array1[i];
    }
    // Printando o Array2
    for(int i=0;i<20;i++){
        printf("%d ",Array2[i]);
    }
    printf("\n");
}
