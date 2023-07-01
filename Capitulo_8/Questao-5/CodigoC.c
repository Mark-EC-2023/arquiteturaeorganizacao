#include <stdio.h>

int main(){
    int Array1[20],Array2[20];
    // Guardando os inteiros de 1 a 20 no array1 
    for(int i=0;i<20;i++){
        Array1[i] = i+1;
    }
    // Copiando os valores do Array1 para o Array2
    for(int i=0;i<20;i++){
        Array2[i] = Array1[i];
    }
    // Printando o Array2
    for(int i=0;i<20;i++){
        printf("%d ",Array2[i]);
    }
    printf("\n");
}
