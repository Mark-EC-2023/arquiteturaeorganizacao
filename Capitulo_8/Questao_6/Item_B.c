#include <stdio.h>

int main(){
    int array1[20]={1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0};
    int flag=0;
for(int i=0; i<20; i++){
        for(int j=0; j<20; j++){
            if(array1[i] < array1[j]){
                int aux   = array1[i];
                array1[i] = array1[j];
                array1[j] = aux;
        flag = 1;
            }
        }
    if(flag == 1) break;
    }

    for(int i=0; i<20; i++) printf("%d ", array1[i]);

}
